FROM nginx

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y wget

RUN rm /usr/share/nginx/html/*
RUN cd /usr/share/nginx/html/ ;  wget -q --recursive --page-requisites --html-extension --convert-links --no-host-directories --domains www.sayitwithbeef.com --no-parent www.sayitwithbeef.com || : #--no-clobber \

RUN apt-get remove -y wget

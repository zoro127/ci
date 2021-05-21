FROM centos:latest
MAINTAINER abhis127@gmail.com
RUN yum install httpd -y \
    zip \
   unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/loxury.zip
WORKDIR /var/www/html
RUN unzip loxury.zip
RUN cp -rvf loxury/* .
RUN rm -rf loxury loxury.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

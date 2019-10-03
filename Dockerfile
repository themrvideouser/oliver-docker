FROM ubuntu:18.10
RUN apt-get update;
RUN apt-get dist-upgrade;
RUN export DEBIAN_FRONTEND="noninteractive" \
    && apt-get -y install apt-utils \
    && apt-get -y install --no-install-recommends dialog \
    && apt-get -y install tzdata;
RUN export DEBIAN_FRONTEND="noninteractive" \
    && apt-get --force-yes --yes install php5*;
RUN apt-get -y install apache2;
RUN apt-get --force-yes --yes install maria-db*;
RUN export DEBIAN_FRONTEND="noninteractive" \
    && apt-get -y install phpmyadmin;
RUN apt-get -y install composer;

CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"];

EXPOSE 80;
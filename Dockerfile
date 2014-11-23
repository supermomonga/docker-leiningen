FROM java:8
MAINTAINER supermomonga

RUN curl https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein \
      -o /usr/local/bin/lein \
      && chmod a+x /usr/local/bin/lein
RUN lein

ENTRYPOINT ["lein"]

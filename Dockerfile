FROM registry.access.redhat.com/ubi8/openjdk-8:1.13-1.1655306434
EXPOSE 8080
ARG JAR=demo-0.0.1-SNAPSHOT.jar
COPY ./target/$JAR /app.jar
ENTRYPOINT java -server \
                # -Xms1024m \
                # -Xmx1024m \
                # -XX:+DisableExplicitGC \
                # -Duser.timezone=GMT+09:00 \
                # -Djava.security.egd=file:/dev/./urandom \
                -jar \
                /app.jar
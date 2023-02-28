FROM node:16.13.0-alpine3.13
WORKDIR /usr/src/app
COPY . ./
RUN addgroup -g 1410 appgroup
RUN adduser -D -u 1410 appuser -G appgroup
RUN chown -R appuser:appgroup /usr/src/app
USER appuser
RUN yarn
ENV USE_CACHE=true
CMD ["yarn", "start"]


FROM node:14-slim

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install --only=prod

COPY ./ ./

EXPOSE 3000

CMD [ "npm", "run", "build" ] # `yarn dev`에서 `yarn start`로 변경

FROM node

WORKDIR /app

COPY . .

RUN  npm ci

RUN  npm run server &

CMD [ "npm", "run", "test:api" ]
FROM node:alpine

WORKDIR /app

ENV PATH /app/node_module/.bin:$PATH

COPY package.json ./

COPY package-lock.json ./

RUN npm i

COPY . ./

CMD ["npm", "start"]
FROM rust:1.24.1
RUN apt-get update && apt-get install -y \
  git curl \
  && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN cargo install mdbook
RUN mkdir -p /book
WORKDIR /book

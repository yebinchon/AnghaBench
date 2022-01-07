
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int server_ctx ;
typedef int client_ctx ;



int can_auth_none(const server_ctx *sx, const client_ctx *cx) {
  return 1;
}

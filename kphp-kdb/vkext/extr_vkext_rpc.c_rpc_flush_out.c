
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_server {int out_bytes; } ;


 scalar_t__ rpc_sock_write (struct rpc_server*,double,int ,int ,int) ;

__attribute__((used)) static int rpc_flush_out (struct rpc_server *server, double timeout) {
  if (server->out_bytes) {
    if (rpc_sock_write (server, timeout, 0, 0, server->out_bytes) < 0) {
      return -1;
    }
  }
  return server->out_bytes;
}

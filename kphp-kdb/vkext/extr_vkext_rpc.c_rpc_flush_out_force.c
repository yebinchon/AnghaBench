
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_server {int dummy; } ;


 scalar_t__ rpc_flush_out (struct rpc_server*,double) ;
 int rpc_server_failure (struct rpc_server*) ;
 int rpc_server_seterror (struct rpc_server*,char*,int ) ;

__attribute__((used)) static int rpc_flush_out_force (struct rpc_server *server, double timeout) {
  if (rpc_flush_out (server, timeout) > 0) {
    rpc_server_seterror (server, "Flush timeout", 0);
    rpc_server_failure (server);
    return -1;
  }
  return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_server {scalar_t__ status; } ;


 int rpc_server_deactivate (struct rpc_server*) ;
 scalar_t__ rpc_status_disconnected ;

__attribute__((used)) static int rpc_server_failure (struct rpc_server *server) {
  if (server->status != rpc_status_disconnected) {
    rpc_server_deactivate (server);
    return 0;
  } else {
    return 1;
  }
}

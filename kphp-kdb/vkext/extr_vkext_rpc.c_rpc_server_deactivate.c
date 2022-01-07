
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_server {int failed; int status; } ;


 int precise_now ;
 int rpc_server_clean (struct rpc_server*) ;
 int rpc_server_disconnect (struct rpc_server*) ;
 int rpc_status_disconnected ;
 int update_precise_now () ;

__attribute__((used)) static void rpc_server_deactivate (struct rpc_server *server) {
  rpc_server_disconnect (server);
  rpc_server_clean (server);
  server->status = rpc_status_disconnected;
  update_precise_now ();
  server->failed = precise_now;

}

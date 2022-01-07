
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_server {scalar_t__ status; scalar_t__ sfd; double timeout; } ;


 int lrand48 () ;
 double precise_now ;
 scalar_t__ rpc_ping_send (struct rpc_server*,double,int ) ;
 int rpc_server_disconnect (struct rpc_server*) ;
 scalar_t__ rpc_status_connected ;
 scalar_t__ rpc_work (struct rpc_server*,int,double) ;
 int update_precise_now () ;

__attribute__((used)) static int rpc_ping (struct rpc_server *server) {

  if (server->status != rpc_status_connected || server->sfd < 0) {
    return -1;
  }
  update_precise_now ();
  double t = precise_now + server->timeout;
  if (rpc_ping_send (server, t, lrand48 ()) < 0) {
    rpc_server_disconnect (server);
    return -1;
  }
  if (rpc_work (server, 1, t) < 0) {
    rpc_server_disconnect (server);
    return -1;
  }
  return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_server {int sfd; scalar_t__ status; } ;


 int active_net_connections ;
 int close (int) ;
 int net_connections_fails ;
 scalar_t__ rpc_status_connected ;
 scalar_t__ rpc_status_disconnected ;

__attribute__((used)) static void rpc_server_disconnect (struct rpc_server *server) {
  if (server->sfd >= 0) {
    close (server->sfd);
    server->sfd = -1;
    if (server->status == rpc_status_connected) {
      active_net_connections --;
    }
    net_connections_fails ++;
  }
  server->status = rpc_status_disconnected;
}

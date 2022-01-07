
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_server {double timeout; int packet_num; int inbound_packet_num; char* error; int errnum; void* status; int generation; int sfd; int port; int host; } ;


 int active_net_connections ;
 int errno ;
 char* estrdup (char*) ;
 int global_generation ;
 double precise_now ;
 scalar_t__ rpc_make_handshake (struct rpc_server*,double) ;
 int rpc_server_deactivate (struct rpc_server*) ;
 int rpc_server_disconnect (struct rpc_server*) ;
 int rpc_server_seterror (struct rpc_server*,char*,int) ;
 int rpc_sock_connect (int ,int ,double) ;
 void* rpc_status_connected ;
 void* rpc_status_failed ;
 char* strerror (int) ;
 int update_precise_now () ;

__attribute__((used)) static int _rpc_connect_open (struct rpc_server *server, char **error_string, int *errnum) {


  if (server->sfd >= 0) {
    rpc_server_disconnect (server);
  }

  update_precise_now ();
  double t = precise_now + server->timeout;
  server->sfd = rpc_sock_connect (server->host, server->port, t);
  if (server->sfd < 0) {
    rpc_server_seterror (server, errno ? strerror (errno) : "Connect timed out", errno);
    rpc_server_deactivate (server);
    if (error_string) {
      *error_string = estrdup (errno ? strerror (errno) : "Connect timed out");
    }
    if (errnum) {
      *errnum = errno;
    }
    server->status = rpc_status_failed;
    return -1;
  }

  server->status = rpc_status_connected;
  active_net_connections ++;
  server->generation = global_generation;
  server->packet_num = -2;
  server->inbound_packet_num = -2;
  if (rpc_make_handshake (server, t) < 0) {
    rpc_server_seterror (server, "Rpc handshake failed", 0);
    if (error_string) {
      *error_string = estrdup (server->error);
    }
    if (errnum) {
      *errnum = server->errnum;
    }
    server->status = rpc_status_failed;
    return -1;
  } else {
    return 1;
  }
}

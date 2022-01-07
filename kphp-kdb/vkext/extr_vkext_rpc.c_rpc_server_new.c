
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_server {unsigned int host; unsigned short port; double timeout; double retry_interval; int packet_num; int inbound_packet_num; int fd; int sfd; int magic; int status; } ;
struct pollfd {int dummy; } ;


 int ADD_PMALLOC (int) ;
 int ADD_PREALLOC (int,int) ;
 int RPC_SERVER_MAGIC ;
 int last_server_fd ;
 int memset (struct rpc_server*,int ,int) ;
 int rpc_server_clean (struct rpc_server*) ;
 int rpc_status_disconnected ;
 struct rpc_server** server_fds ;
 struct rpc_server** server_fds_tmp ;
 struct rpc_server** servers ;
 int servers_size ;
 struct rpc_server* zzmalloc (int) ;
 struct rpc_server** zzrealloc (struct rpc_server**,int,int) ;

__attribute__((used)) static struct rpc_server *rpc_server_new (unsigned host, unsigned short port, double timeout, double retry_interval) {
  struct rpc_server *server = zzmalloc (sizeof (*server));
  ADD_PMALLOC (sizeof (*server));
  memset (server, 0, sizeof (*server));

  server->host = host;

  server->port = port;
  server->status = rpc_status_disconnected;

  server->timeout = timeout;
  server->retry_interval = retry_interval;

  server->packet_num = -2;
  server->inbound_packet_num = -2;

  server->magic = RPC_SERVER_MAGIC;

  server->fd = last_server_fd ++;
  if (server->fd >= servers_size) {
    int new_servers_size = servers_size * 2 + 100;
    servers = zzrealloc (servers, sizeof (void *) * servers_size, sizeof (void *) * new_servers_size);
    ADD_PREALLOC (sizeof (void *) * servers_size, sizeof (void *) * new_servers_size);
    server_fds = zzrealloc (server_fds, sizeof (struct pollfd) * servers_size, sizeof (struct pollfd) * new_servers_size);
    ADD_PREALLOC (sizeof (struct pollfd) * servers_size, sizeof (struct pollfd) * new_servers_size);
    server_fds_tmp = zzrealloc (server_fds_tmp, sizeof (int) * servers_size, sizeof (int) * new_servers_size);
    ADD_PREALLOC (sizeof (int) * servers_size, sizeof (int) * new_servers_size);
    servers_size = new_servers_size;
  }
  servers[server->fd] = server;
  server->sfd = -1;
  rpc_server_clean (server);

  return server;
}

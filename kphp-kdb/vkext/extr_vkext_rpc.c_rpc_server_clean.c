
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_server {int inbound_packet_num; int packet_num; int out_buf; int out_rptr; int out_wptr; scalar_t__ in_bytes; } ;



__attribute__((used)) static void rpc_server_clean (struct rpc_server *server) {
  server->in_bytes = 0;
  server->out_wptr = server->out_rptr = server->out_buf;
  server->inbound_packet_num = server->packet_num = -2;
}

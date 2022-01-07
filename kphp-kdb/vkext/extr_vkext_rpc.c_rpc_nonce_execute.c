
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_server {int inbound_packet_num; } ;
struct rpc_nonce {int dummy; } ;


 int rpc_server_seterror (struct rpc_server*,char*,int ) ;

__attribute__((used)) static int rpc_nonce_execute (struct rpc_server *server, char *answer, int answer_len) {
  if (answer_len != sizeof (struct rpc_nonce) || server->inbound_packet_num != -1) {
    rpc_server_seterror (server, "Bad nonce packet", 0);
    return -1;
  }
  return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_join_ack {long long id; } ;
struct connection {int dummy; } ;


 scalar_t__ Q ;
 int RPC_TYPE_JOIN_ACK ;
 int fprintf (int ,char*) ;
 int rpc_create_query (struct rpc_join_ack*,int,struct connection*,int ) ;
 int rpc_send_query (struct rpc_join_ack*,struct connection*) ;
 int stderr ;
 int verbosity ;

int rpc_send_join_ack (struct connection *c, long long x) {
  if (verbosity >= 2) {
    fprintf (stderr, "rpc_send_join_ack\n");
  }
  struct rpc_join_ack *T = (struct rpc_join_ack *)Q;
  rpc_create_query (T, sizeof (struct rpc_join_ack), c, RPC_TYPE_JOIN_ACK);
  T->id = x;
  return rpc_send_query (T, c);
}

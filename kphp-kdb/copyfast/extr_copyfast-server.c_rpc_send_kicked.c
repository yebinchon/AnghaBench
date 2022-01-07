
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_kicked {int dummy; } ;
struct connection {int dummy; } ;


 scalar_t__ Q ;
 int RPC_TYPE_KICKED ;
 int fprintf (int ,char*) ;
 int rpc_create_query (struct rpc_kicked*,int,struct connection*,int ) ;
 int rpc_send_query (struct rpc_kicked*,struct connection*) ;
 int stderr ;
 int verbosity ;

int rpc_send_kicked (struct connection *c) {
  if (verbosity >= 2) {
    fprintf (stderr, "rpc_send_kicked\n");
  }
  struct rpc_kicked *T = (struct rpc_kicked *)Q;
  rpc_create_query (T, sizeof (struct rpc_kicked), c, RPC_TYPE_KICKED);
  return rpc_send_query (T, c);
}

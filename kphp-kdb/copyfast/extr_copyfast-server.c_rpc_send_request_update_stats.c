
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_request_update_stats {int dummy; } ;
struct connection {int dummy; } ;


 scalar_t__ Q ;
 int RPC_TYPE_REQUEST_UPDATE_STATS ;
 int fprintf (int ,char*,long long) ;
 scalar_t__ rpc_create_query (struct rpc_request_update_stats*,int,struct connection*,int ) ;
 int rpc_send_query (struct rpc_request_update_stats*,struct connection*) ;
 int stderr ;
 int verbosity ;

int rpc_send_request_update_stats (struct connection *c, long long id) {
  if (verbosity >= 2) {
    fprintf (stderr, "rpc_send_request_update_stats: id = %lld\n", id);
  }
  struct rpc_request_update_stats *T = (struct rpc_request_update_stats *)Q;
  if (rpc_create_query (T, sizeof (struct rpc_request_update_stats), c, RPC_TYPE_REQUEST_UPDATE_STATS) < 0) {
    return -1;
  }
  return rpc_send_query (T, c);
}

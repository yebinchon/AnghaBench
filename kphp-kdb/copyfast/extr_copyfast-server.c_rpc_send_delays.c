
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_delays {long long id; int slow_delay; int medium_delay; } ;
struct connection {int dummy; } ;


 scalar_t__ Q ;
 int RPC_TYPE_DELAYS ;
 int fprintf (int ,char*,int ,int ) ;
 int medium_delay ;
 int rpc_create_query (struct rpc_delays*,int,struct connection*,int ) ;
 int rpc_send_query (struct rpc_delays*,struct connection*) ;
 int slow_delay ;
 int stderr ;
 int verbosity ;

int rpc_send_delays (struct connection *c, long long id) {
  if (verbosity >= 2) {
    fprintf (stderr, "rpc_send_delays: slow_delay = %lf, medium_delay = %lf\n", slow_delay, medium_delay);
  }
  struct rpc_delays *T = (struct rpc_delays *)Q;
  rpc_create_query (T, sizeof (struct rpc_delays), c, RPC_TYPE_DELAYS);
  T->medium_delay = medium_delay;
  T->slow_delay = slow_delay;
  T->id = id;
  return rpc_send_query (T, c);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_delays_old {int slow_delay; int medium_delay; } ;
struct connection {int dummy; } ;


 scalar_t__ Q ;
 int RPC_TYPE_DELAYS_OLD ;
 int fprintf (int ,char*,int ,int ) ;
 int medium_delay ;
 int rpc_create_query (struct rpc_delays_old*,int,struct connection*,int ) ;
 int rpc_send_query (struct rpc_delays_old*,struct connection*) ;
 int slow_delay ;
 int stderr ;
 int verbosity ;

int rpc_send_delays_old (struct connection *c) {
  if (verbosity >= 2) {
    fprintf (stderr, "rpc_send_delays_old: slow_delay = %lf, medium_delay = %lf\n", slow_delay, medium_delay);
  }
  struct rpc_delays_old *T = (struct rpc_delays_old *)Q;
  rpc_create_query (T, sizeof (struct rpc_delays_old), c, RPC_TYPE_DELAYS_OLD);
  T->medium_delay = medium_delay;
  T->slow_delay = slow_delay;
  return rpc_send_query (T, c);
}

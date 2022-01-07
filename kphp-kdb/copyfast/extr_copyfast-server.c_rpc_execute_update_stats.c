
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_update_stats {int stats; int id; } ;
struct long_update_stats {int dummy; } ;
struct connection {int dummy; } ;
struct TYPE_2__ {scalar_t__ time_requested; } ;


 int assert (int) ;
 int fprintf (int ,char*,int) ;
 int get_node_idx (int ) ;
 int last_stats_time ;
 int long_stats ;
 int long_stats_num ;
 int memcpy (int *,int *,int) ;
 TYPE_1__* nodes ;
 int nodes_num ;
 int now ;
 int stderr ;
 int verbosity ;

int rpc_execute_update_stats (struct connection *c, struct rpc_update_stats *P, int len) {
  if (verbosity >= 2) {
    fprintf (stderr, "rpc_execute_update_stats: len = %d\n", len);
  }
  if (len != sizeof (struct rpc_update_stats)) {
    return 0;
  }
  int n = get_node_idx (P->id);
  if (n < 0) {
    return 0;
  }
  assert (0 <= n && n < nodes_num);
  nodes[n].time_requested = 0;
  long_stats_num = n;
  last_stats_time = now;
  memcpy (&long_stats, &P->stats, sizeof (struct long_update_stats));
  return 0;

}

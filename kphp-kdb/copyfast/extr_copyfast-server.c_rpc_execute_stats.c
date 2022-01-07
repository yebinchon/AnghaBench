
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union engine_stats {int dummy; } engine_stats ;
struct rpc_stats {int stats; int id; } ;
struct connection {int dummy; } ;
struct TYPE_2__ {int stats; } ;


 int assert (int) ;
 int fprintf (int ,char*,int) ;
 int get_node_idx (int ) ;
 int memcpy (int *,int *,int) ;
 TYPE_1__* nodes ;
 int nodes_num ;
 int stderr ;
 int verbosity ;

int rpc_execute_stats (struct connection *c, struct rpc_stats *P, int len) {
  if (verbosity >= 2) {
    fprintf (stderr, "rpc_execute_stats: len = %d\n", len);
  }
  if (len != sizeof (struct rpc_stats)) {
    return 0;
  }
  int n = get_node_idx (P->id);
  if (n < 0) {
    return 0;
  }
  assert (0 <= n && n < nodes_num);
  memcpy (&nodes[n].stats, &P->stats, sizeof (union engine_stats));
  return 0;

}

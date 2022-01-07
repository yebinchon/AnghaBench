
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr_nodes; int nr_cpus; } ;


 int N_POSSIBLE ;
 TYPE_1__ loongson_sysconf ;
 int node_online_map ;
 int node_possible_map ;
 int node_set_online (int ) ;
 int node_set_state (int ,int ) ;
 int nodes_clear (int ) ;
 int num_online_nodes () ;
 int pr_info (char*,int ,int ) ;

__attribute__((used)) static void cpu_node_probe(void)
{
 int i;

 nodes_clear(node_possible_map);
 nodes_clear(node_online_map);
 for (i = 0; i < loongson_sysconf.nr_nodes; i++) {
  node_set_state(num_online_nodes(), N_POSSIBLE);
  node_set_online(num_online_nodes());
 }

 pr_info("NUMA: Discovered %d cpus on %d nodes\n",
  loongson_sysconf.nr_cpus, num_online_nodes());
}

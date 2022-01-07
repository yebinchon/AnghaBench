
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* cpu_to_node_map ;
 int cpumask_set_cpu (int,int *) ;
 scalar_t__ cpumask_test_cpu (int,int *) ;
 int first_online_node ;
 int node_online (int) ;
 int * node_to_cpu_mask ;

void map_cpu_to_node(int cpu, int nid)
{
 int oldnid;
 if (nid < 0) {
  cpu_to_node_map[cpu] = 0;
  return;
 }

 oldnid = cpu_to_node_map[cpu];
 if (cpumask_test_cpu(cpu, &node_to_cpu_mask[oldnid])) {
  return;
 }


 if (!node_online(nid))
  nid = first_online_node;
 cpu_to_node_map[cpu] = nid;
 cpumask_set_cpu(cpu, &node_to_cpu_mask[nid]);
 return;
}

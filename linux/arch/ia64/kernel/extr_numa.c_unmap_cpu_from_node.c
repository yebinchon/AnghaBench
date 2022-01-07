
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int) ;
 int* cpu_to_node_map ;
 int cpumask_clear_cpu (int,int *) ;
 int cpumask_test_cpu (int,int *) ;
 int * node_to_cpu_mask ;

void unmap_cpu_from_node(int cpu, int nid)
{
 WARN_ON(!cpumask_test_cpu(cpu, &node_to_cpu_mask[nid]));
 WARN_ON(cpu_to_node_map[cpu] != nid);
 cpu_to_node_map[cpu] = 0;
 cpumask_clear_cpu(cpu, &node_to_cpu_mask[nid]);
}

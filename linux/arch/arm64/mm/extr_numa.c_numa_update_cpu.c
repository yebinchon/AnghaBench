
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUMA_NO_NODE ;
 int cpu_to_node (unsigned int) ;
 int cpumask_clear_cpu (unsigned int,int ) ;
 int cpumask_set_cpu (unsigned int,int ) ;
 int * node_to_cpumask_map ;

__attribute__((used)) static void numa_update_cpu(unsigned int cpu, bool remove)
{
 int nid = cpu_to_node(cpu);

 if (nid == NUMA_NO_NODE)
  return;

 if (remove)
  cpumask_clear_cpu(cpu, node_to_cpumask_map[nid]);
 else
  cpumask_set_cpu(cpu, node_to_cpumask_map[nid]);
}

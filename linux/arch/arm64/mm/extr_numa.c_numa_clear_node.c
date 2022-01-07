
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUMA_NO_NODE ;
 int numa_remove_cpu (unsigned int) ;
 int set_cpu_numa_node (unsigned int,int ) ;

void numa_clear_node(unsigned int cpu)
{
 numa_remove_cpu(cpu);
 set_cpu_numa_node(cpu, NUMA_NO_NODE);
}

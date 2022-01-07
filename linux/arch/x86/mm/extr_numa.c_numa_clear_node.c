
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUMA_NO_NODE ;
 int numa_set_node (int,int ) ;

void numa_clear_node(int cpu)
{
 numa_set_node(cpu, NUMA_NO_NODE);
}

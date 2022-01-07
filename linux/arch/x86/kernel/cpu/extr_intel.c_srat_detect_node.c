
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int dummy; } ;


 unsigned int NUMA_NO_NODE ;
 unsigned int cpu_to_node (int) ;
 int node_online (unsigned int) ;
 unsigned int numa_cpu_node (int) ;
 int numa_set_node (int,unsigned int) ;
 int smp_processor_id () ;

__attribute__((used)) static void srat_detect_node(struct cpuinfo_x86 *c)
{
}

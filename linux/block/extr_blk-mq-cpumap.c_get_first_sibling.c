
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int cpumask_first (int ) ;
 unsigned int nr_cpu_ids ;
 int topology_sibling_cpumask (unsigned int) ;

__attribute__((used)) static int get_first_sibling(unsigned int cpu)
{
 unsigned int ret;

 ret = cpumask_first(topology_sibling_cpumask(cpu));
 if (ret < nr_cpu_ids)
  return ret;

 return cpu;
}

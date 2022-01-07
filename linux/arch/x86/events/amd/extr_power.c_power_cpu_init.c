
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_mask ;
 int cpumask_any_but (int ,unsigned int) ;
 int cpumask_set_cpu (unsigned int,int *) ;
 int nr_cpumask_bits ;
 int topology_sibling_cpumask (unsigned int) ;

__attribute__((used)) static int power_cpu_init(unsigned int cpu)
{
 int target;
 target = cpumask_any_but(topology_sibling_cpumask(cpu), cpu);
 if (target >= nr_cpumask_bits)
  cpumask_set_cpu(cpu, &cpu_mask);
 return 0;
}

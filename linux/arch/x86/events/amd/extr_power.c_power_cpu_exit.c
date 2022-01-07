
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_mask ;
 int cpumask_any_but (int ,unsigned int) ;
 int cpumask_set_cpu (int,int *) ;
 int cpumask_test_and_clear_cpu (unsigned int,int *) ;
 int nr_cpumask_bits ;
 int perf_pmu_migrate_context (int *,unsigned int,int) ;
 int pmu_class ;
 int topology_sibling_cpumask (unsigned int) ;

__attribute__((used)) static int power_cpu_exit(unsigned int cpu)
{
 int target;

 if (!cpumask_test_and_clear_cpu(cpu, &cpu_mask))
  return 0;






 target = cpumask_any_but(topology_sibling_cpumask(cpu), cpu);
 if (target < nr_cpumask_bits) {
  cpumask_set_cpu(target, &cpu_mask);
  perf_pmu_migrate_context(&pmu_class, cpu, target);
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_online_mask ;
 unsigned int cpumask_any_but (int ,unsigned int) ;
 int cpumask_set_cpu (unsigned int,int *) ;
 int cpumask_test_and_clear_cpu (unsigned int,int *) ;
 int l2x0_pmu ;
 unsigned int nr_cpu_ids ;
 int perf_pmu_migrate_context (int ,unsigned int,unsigned int) ;
 int pmu_cpu ;

__attribute__((used)) static int l2x0_pmu_offline_cpu(unsigned int cpu)
{
 unsigned int target;

 if (!cpumask_test_and_clear_cpu(cpu, &pmu_cpu))
  return 0;

 target = cpumask_any_but(cpu_online_mask, cpu);
 if (target >= nr_cpu_ids)
  return 0;

 perf_pmu_migrate_context(l2x0_pmu, cpu, target);
 cpumask_set_cpu(target, &pmu_cpu);

 return 0;
}

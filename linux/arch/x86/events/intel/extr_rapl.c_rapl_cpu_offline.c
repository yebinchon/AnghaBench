
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rapl_pmu {int cpu; int pmu; } ;


 struct rapl_pmu* cpu_to_rapl_pmu (unsigned int) ;
 int cpumask_any_but (int ,unsigned int) ;
 int cpumask_set_cpu (int,int *) ;
 int cpumask_test_and_clear_cpu (unsigned int,int *) ;
 int nr_cpu_ids ;
 int perf_pmu_migrate_context (int ,unsigned int,int) ;
 int rapl_cpu_mask ;
 int topology_die_cpumask (unsigned int) ;

__attribute__((used)) static int rapl_cpu_offline(unsigned int cpu)
{
 struct rapl_pmu *pmu = cpu_to_rapl_pmu(cpu);
 int target;


 if (!cpumask_test_and_clear_cpu(cpu, &rapl_cpu_mask))
  return 0;

 pmu->cpu = -1;

 target = cpumask_any_but(topology_die_cpumask(cpu), cpu);


 if (target < nr_cpu_ids) {
  cpumask_set_cpu(target, &rapl_cpu_mask);
  pmu->cpu = target;
  perf_pmu_migrate_context(pmu->pmu, cpu, target);
 }
 return 0;
}

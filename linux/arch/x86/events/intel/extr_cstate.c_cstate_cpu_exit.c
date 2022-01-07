
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int cpumask_any_but (int ,unsigned int) ;
 int cpumask_set_cpu (unsigned int,int *) ;
 scalar_t__ cpumask_test_and_clear_cpu (unsigned int,int *) ;
 int cstate_core_cpu_mask ;
 int cstate_core_pmu ;
 int cstate_pkg_cpu_mask ;
 int cstate_pkg_pmu ;
 scalar_t__ has_cstate_core ;
 scalar_t__ has_cstate_pkg ;
 unsigned int nr_cpu_ids ;
 int perf_pmu_migrate_context (int *,unsigned int,unsigned int) ;
 int topology_die_cpumask (unsigned int) ;
 int topology_sibling_cpumask (unsigned int) ;

__attribute__((used)) static int cstate_cpu_exit(unsigned int cpu)
{
 unsigned int target;

 if (has_cstate_core &&
     cpumask_test_and_clear_cpu(cpu, &cstate_core_cpu_mask)) {

  target = cpumask_any_but(topology_sibling_cpumask(cpu), cpu);

  if (target < nr_cpu_ids) {
   cpumask_set_cpu(target, &cstate_core_cpu_mask);
   perf_pmu_migrate_context(&cstate_core_pmu, cpu, target);
  }
 }

 if (has_cstate_pkg &&
     cpumask_test_and_clear_cpu(cpu, &cstate_pkg_cpu_mask)) {

  target = cpumask_any_but(topology_die_cpumask(cpu), cpu);

  if (target < nr_cpu_ids) {
   cpumask_set_cpu(target, &cstate_pkg_cpu_mask);
   perf_pmu_migrate_context(&cstate_pkg_pmu, cpu, target);
  }
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct imc_pmu_ref {scalar_t__ refc; } ;
struct TYPE_3__ {int event_init; } ;
struct TYPE_4__ {TYPE_1__ pmu; } ;


 int EINVAL ;
 int OPAL_IMC_COUNTERS_CORE ;
 int core_imc_cpumask ;
 TYPE_2__* core_imc_pmu ;
 struct imc_pmu_ref* core_imc_refc ;
 int cpu_sibling_mask (unsigned int) ;
 int cpumask_any_but (int ,unsigned int) ;
 int cpumask_last (int ) ;
 int cpumask_set_cpu (int,int *) ;
 int cpumask_test_and_clear_cpu (unsigned int,int *) ;
 int get_hard_smp_processor_id (unsigned int) ;
 int nr_cpu_ids ;
 int opal_imc_counters_stop (int ,int ) ;
 int perf_pmu_migrate_context (TYPE_1__*,unsigned int,int) ;
 unsigned int threads_per_core ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ppc_core_imc_cpu_offline(unsigned int cpu)
{
 unsigned int core_id;
 int ncpu;
 struct imc_pmu_ref *ref;





 if (!cpumask_test_and_clear_cpu(cpu, &core_imc_cpumask))
  return 0;
 if (!core_imc_pmu->pmu.event_init)
  return 0;


 ncpu = cpumask_last(cpu_sibling_mask(cpu));

 if (unlikely(ncpu == cpu))
  ncpu = cpumask_any_but(cpu_sibling_mask(cpu), cpu);

 if (ncpu >= 0 && ncpu < nr_cpu_ids) {
  cpumask_set_cpu(ncpu, &core_imc_cpumask);
  perf_pmu_migrate_context(&core_imc_pmu->pmu, cpu, ncpu);
 } else {





  opal_imc_counters_stop(OPAL_IMC_COUNTERS_CORE,
           get_hard_smp_processor_id(cpu));
  core_id = cpu / threads_per_core;
  ref = &core_imc_refc[core_id];
  if (!ref)
   return -EINVAL;

  ref->refc = 0;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imc_pmu_ref {scalar_t__ refc; } ;
struct cpumask {int dummy; } ;


 int EINVAL ;
 int OPAL_IMC_COUNTERS_NEST ;
 int cpu_to_node (unsigned int) ;
 int cpumask_any_but (struct cpumask const*,unsigned int) ;
 int cpumask_last (struct cpumask const*) ;
 struct cpumask* cpumask_of_node (int) ;
 int cpumask_set_cpu (int,int *) ;
 int cpumask_test_and_clear_cpu (unsigned int,int *) ;
 int get_hard_smp_processor_id (unsigned int) ;
 struct imc_pmu_ref* get_nest_pmu_ref (unsigned int) ;
 int nest_change_cpu_context (unsigned int,int) ;
 int nest_imc_cpumask ;
 int nest_pmus ;
 int nr_cpu_ids ;
 int opal_imc_counters_stop (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ppc_nest_imc_cpu_offline(unsigned int cpu)
{
 int nid, target = -1;
 const struct cpumask *l_cpumask;
 struct imc_pmu_ref *ref;





 if (!cpumask_test_and_clear_cpu(cpu, &nest_imc_cpumask))
  return 0;
 if (!nest_pmus)
  return 0;





 nid = cpu_to_node(cpu);
 l_cpumask = cpumask_of_node(nid);
 target = cpumask_last(l_cpumask);





 if (unlikely(target == cpu))
  target = cpumask_any_but(l_cpumask, cpu);





 if (target >= 0 && target < nr_cpu_ids) {
  cpumask_set_cpu(target, &nest_imc_cpumask);
  nest_change_cpu_context(cpu, target);
 } else {
  opal_imc_counters_stop(OPAL_IMC_COUNTERS_NEST,
           get_hard_smp_processor_id(cpu));




  ref = get_nest_pmu_ref(cpu);
  if (!ref)
   return -EINVAL;

  ref->refc = 0;
 }
 return 0;
}

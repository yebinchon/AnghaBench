
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int OPAL_IMC_COUNTERS_NEST ;
 int cpu_to_node (unsigned int) ;
 scalar_t__ cpumask_and (struct cpumask*,struct cpumask const*,int *) ;
 struct cpumask* cpumask_of_node (int ) ;
 int cpumask_set_cpu (unsigned int,int *) ;
 int get_hard_smp_processor_id (unsigned int) ;
 int nest_imc_cpumask ;
 int opal_imc_counters_stop (int ,int ) ;

__attribute__((used)) static int ppc_nest_imc_cpu_online(unsigned int cpu)
{
 const struct cpumask *l_cpumask;
 static struct cpumask tmp_mask;
 int res;


 l_cpumask = cpumask_of_node(cpu_to_node(cpu));





 if (cpumask_and(&tmp_mask, l_cpumask, &nest_imc_cpumask))
  return 0;





 res = opal_imc_counters_stop(OPAL_IMC_COUNTERS_NEST,
         get_hard_smp_processor_id(cpu));
 if (res)
  return res;


 cpumask_set_cpu(cpu, &nest_imc_cpumask);
 return 0;
}

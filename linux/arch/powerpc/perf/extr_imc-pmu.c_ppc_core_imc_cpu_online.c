
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpumask {int dummy; } ;
struct TYPE_2__ {int counter_mem_size; } ;


 int core_imc_cpumask ;
 int core_imc_mem_init (unsigned int,int ) ;
 TYPE_1__* core_imc_pmu ;
 struct cpumask* cpu_sibling_mask (unsigned int) ;
 scalar_t__ cpumask_and (struct cpumask*,struct cpumask const*,int *) ;
 int cpumask_set_cpu (unsigned int,int *) ;
 int is_core_imc_mem_inited (unsigned int) ;
 int pr_info (char*,unsigned int) ;

__attribute__((used)) static int ppc_core_imc_cpu_online(unsigned int cpu)
{
 const struct cpumask *l_cpumask;
 static struct cpumask tmp_mask;
 int ret = 0;


 l_cpumask = cpu_sibling_mask(cpu);


 if (cpumask_and(&tmp_mask, l_cpumask, &core_imc_cpumask))
  return 0;

 if (!is_core_imc_mem_inited(cpu)) {
  ret = core_imc_mem_init(cpu, core_imc_pmu->counter_mem_size);
  if (ret) {
   pr_info("core_imc memory allocation for cpu %d failed\n", cpu);
   return ret;
  }
 }


 cpumask_set_cpu(cpu, &core_imc_cpumask);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 struct cpumask const* cpu_llc_shared_mask (int) ;

const struct cpumask *cpu_coregroup_mask(int cpu)
{
 return cpu_llc_shared_mask(cpu);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {unsigned int cpu; } ;


 int BUG () ;
 unsigned long SAFARI_CFG_DIV_1 ;
 unsigned long SAFARI_CFG_DIV_2 ;
 unsigned long SAFARI_CFG_DIV_32 ;
 int smp_call_function_single (unsigned int,int ,unsigned long*,int) ;
 int sparc64_get_clock_tick (unsigned int) ;
 int update_safari_cfg ;

__attribute__((used)) static int us3_freq_target(struct cpufreq_policy *policy, unsigned int index)
{
 unsigned int cpu = policy->cpu;
 unsigned long new_bits, new_freq;

 new_freq = sparc64_get_clock_tick(cpu) / 1000;
 switch (index) {
 case 0:
  new_bits = SAFARI_CFG_DIV_1;
  new_freq /= 1;
  break;
 case 1:
  new_bits = SAFARI_CFG_DIV_2;
  new_freq /= 2;
  break;
 case 2:
  new_bits = SAFARI_CFG_DIV_32;
  new_freq /= 32;
  break;

 default:
  BUG();
 }

 return smp_call_function_single(cpu, update_safari_cfg, &new_bits, 1);
}

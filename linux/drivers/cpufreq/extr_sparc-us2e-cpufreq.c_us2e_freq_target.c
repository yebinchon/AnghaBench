
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {unsigned int cpu; } ;


 int __us2e_freq_target ;
 int smp_call_function_single (unsigned int,int ,unsigned int*,int) ;

__attribute__((used)) static int us2e_freq_target(struct cpufreq_policy *policy, unsigned int index)
{
 unsigned int cpu = policy->cpu;

 return smp_call_function_single(cpu, __us2e_freq_target, &index, 1);
}

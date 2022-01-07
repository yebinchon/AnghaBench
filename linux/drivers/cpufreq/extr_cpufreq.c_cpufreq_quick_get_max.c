
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {unsigned int max; } ;


 struct cpufreq_policy* cpufreq_cpu_get (unsigned int) ;
 int cpufreq_cpu_put (struct cpufreq_policy*) ;

unsigned int cpufreq_quick_get_max(unsigned int cpu)
{
 struct cpufreq_policy *policy = cpufreq_cpu_get(cpu);
 unsigned int ret_freq = 0;

 if (policy) {
  ret_freq = policy->max;
  cpufreq_cpu_put(policy);
 }

 return ret_freq;
}

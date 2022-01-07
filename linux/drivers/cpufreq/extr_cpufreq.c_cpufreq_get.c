
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {int rwsem; } ;
struct TYPE_2__ {scalar_t__ get; } ;


 unsigned int __cpufreq_get (struct cpufreq_policy*) ;
 struct cpufreq_policy* cpufreq_cpu_get (unsigned int) ;
 int cpufreq_cpu_put (struct cpufreq_policy*) ;
 TYPE_1__* cpufreq_driver ;
 int down_read (int *) ;
 int up_read (int *) ;

unsigned int cpufreq_get(unsigned int cpu)
{
 struct cpufreq_policy *policy = cpufreq_cpu_get(cpu);
 unsigned int ret_freq = 0;

 if (policy) {
  down_read(&policy->rwsem);
  if (cpufreq_driver->get)
   ret_freq = __cpufreq_get(policy);
  up_read(&policy->rwsem);

  cpufreq_cpu_put(policy);
 }

 return ret_freq;
}

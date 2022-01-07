
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int rwsem; } ;


 struct cpufreq_policy* cpufreq_cpu_get (unsigned int) ;
 int cpufreq_cpu_release (struct cpufreq_policy*) ;
 int down_write (int *) ;
 scalar_t__ policy_is_inactive (struct cpufreq_policy*) ;

struct cpufreq_policy *cpufreq_cpu_acquire(unsigned int cpu)
{
 struct cpufreq_policy *policy = cpufreq_cpu_get(cpu);

 if (!policy)
  return ((void*)0);

 down_write(&policy->rwsem);

 if (policy_is_inactive(policy)) {
  cpufreq_cpu_release(policy);
  return ((void*)0);
 }

 return policy;
}

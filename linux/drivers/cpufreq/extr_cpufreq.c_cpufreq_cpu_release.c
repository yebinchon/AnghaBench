
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int rwsem; } ;


 scalar_t__ WARN_ON (int) ;
 int cpufreq_cpu_put (struct cpufreq_policy*) ;
 int lockdep_assert_held (int *) ;
 int up_write (int *) ;

void cpufreq_cpu_release(struct cpufreq_policy *policy)
{
 if (WARN_ON(!policy))
  return;

 lockdep_assert_held(&policy->rwsem);

 up_write(&policy->rwsem);

 cpufreq_cpu_put(policy);
}

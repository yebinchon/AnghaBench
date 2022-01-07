
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {int dummy; } ;
struct TYPE_2__ {scalar_t__ get; } ;


 scalar_t__ WARN_ON (int) ;
 struct cpufreq_policy* cpufreq_cpu_acquire (unsigned int) ;
 int cpufreq_cpu_release (struct cpufreq_policy*) ;
 TYPE_1__* cpufreq_driver ;
 scalar_t__ cpufreq_suspended ;
 int cpufreq_verify_current_freq (struct cpufreq_policy*,int) ;
 scalar_t__ has_target () ;
 int refresh_frequency_limits (struct cpufreq_policy*) ;

void cpufreq_update_policy(unsigned int cpu)
{
 struct cpufreq_policy *policy = cpufreq_cpu_acquire(cpu);

 if (!policy)
  return;





 if (cpufreq_driver->get && has_target() &&
     (cpufreq_suspended || WARN_ON(!cpufreq_verify_current_freq(policy, 0))))
  goto unlock;

 refresh_frequency_limits(policy);

unlock:
 cpufreq_cpu_release(policy);
}

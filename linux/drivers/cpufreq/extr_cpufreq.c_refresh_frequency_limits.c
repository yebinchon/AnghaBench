
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int cpu; } ;


 int cpufreq_set_policy (struct cpufreq_policy*,struct cpufreq_policy*) ;
 int policy_is_inactive (struct cpufreq_policy*) ;
 int pr_debug (char*,int ) ;

void refresh_frequency_limits(struct cpufreq_policy *policy)
{
 struct cpufreq_policy new_policy;

 if (!policy_is_inactive(policy)) {
  new_policy = *policy;
  pr_debug("updating policy for CPU %u\n", policy->cpu);

  cpufreq_set_policy(policy, &new_policy);
 }
}

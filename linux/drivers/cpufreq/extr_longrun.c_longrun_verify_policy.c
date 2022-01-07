
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {scalar_t__ policy; scalar_t__ cpu; } ;


 scalar_t__ CPUFREQ_POLICY_PERFORMANCE ;
 scalar_t__ CPUFREQ_POLICY_POWERSAVE ;
 int EINVAL ;
 int cpufreq_verify_within_cpu_limits (struct cpufreq_policy*) ;

__attribute__((used)) static int longrun_verify_policy(struct cpufreq_policy *policy)
{
 if (!policy)
  return -EINVAL;

 policy->cpu = 0;
 cpufreq_verify_within_cpu_limits(policy);

 if ((policy->policy != CPUFREQ_POLICY_POWERSAVE) &&
     (policy->policy != CPUFREQ_POLICY_PERFORMANCE))
  return -EINVAL;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {scalar_t__ cpu; } ;


 int EINVAL ;
 int cpufreq_verify_within_cpu_limits (struct cpufreq_policy*) ;

__attribute__((used)) static int ucv2_verify_speed(struct cpufreq_policy *policy)
{
 if (policy->cpu)
  return -EINVAL;

 cpufreq_verify_within_cpu_limits(policy);
 return 0;
}

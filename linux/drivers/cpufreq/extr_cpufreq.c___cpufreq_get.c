
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int dummy; } ;


 unsigned int cpufreq_verify_current_freq (struct cpufreq_policy*,int) ;
 int policy_is_inactive (struct cpufreq_policy*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static unsigned int __cpufreq_get(struct cpufreq_policy *policy)
{
 if (unlikely(policy_is_inactive(policy)))
  return 0;

 return cpufreq_verify_current_freq(policy, 1);
}

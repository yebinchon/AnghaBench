
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int policy; } ;


 int CPUFREQ_NAME_LEN ;
 int CPUFREQ_POLICY_PERFORMANCE ;
 int CPUFREQ_POLICY_POWERSAVE ;
 int EINVAL ;
 int strncasecmp (char*,char*,int ) ;

__attribute__((used)) static int cpufreq_parse_policy(char *str_governor,
    struct cpufreq_policy *policy)
{
 if (!strncasecmp(str_governor, "performance", CPUFREQ_NAME_LEN)) {
  policy->policy = CPUFREQ_POLICY_PERFORMANCE;
  return 0;
 }
 if (!strncasecmp(str_governor, "powersave", CPUFREQ_NAME_LEN)) {
  policy->policy = CPUFREQ_POLICY_POWERSAVE;
  return 0;
 }
 return -EINVAL;
}

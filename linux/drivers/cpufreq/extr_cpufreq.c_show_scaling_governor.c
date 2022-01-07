
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {scalar_t__ policy; TYPE_1__* governor; } ;
typedef int ssize_t ;
struct TYPE_2__ {int name; } ;


 int CPUFREQ_NAME_PLEN ;
 scalar_t__ CPUFREQ_POLICY_PERFORMANCE ;
 scalar_t__ CPUFREQ_POLICY_POWERSAVE ;
 int EINVAL ;
 int scnprintf (char*,int ,char*,int ) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t show_scaling_governor(struct cpufreq_policy *policy, char *buf)
{
 if (policy->policy == CPUFREQ_POLICY_POWERSAVE)
  return sprintf(buf, "powersave\n");
 else if (policy->policy == CPUFREQ_POLICY_PERFORMANCE)
  return sprintf(buf, "performance\n");
 else if (policy->governor)
  return scnprintf(buf, CPUFREQ_NAME_PLEN, "%s\n",
    policy->governor->name);
 return -EINVAL;
}

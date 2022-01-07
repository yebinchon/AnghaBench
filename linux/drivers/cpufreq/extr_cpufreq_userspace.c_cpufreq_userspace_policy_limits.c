
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {unsigned int* governor_data; unsigned int min; unsigned int max; int cur; int cpu; } ;


 int CPUFREQ_RELATION_H ;
 int CPUFREQ_RELATION_L ;
 int __cpufreq_driver_target (struct cpufreq_policy*,unsigned int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ,unsigned int,unsigned int,int ,unsigned int) ;
 int userspace_mutex ;

__attribute__((used)) static void cpufreq_userspace_policy_limits(struct cpufreq_policy *policy)
{
 unsigned int *setspeed = policy->governor_data;

 mutex_lock(&userspace_mutex);

 pr_debug("limit event for cpu %u: %u - %u kHz, currently %u kHz, last set to %u kHz\n",
   policy->cpu, policy->min, policy->max, policy->cur, *setspeed);

 if (policy->max < *setspeed)
  __cpufreq_driver_target(policy, policy->max, CPUFREQ_RELATION_H);
 else if (policy->min > *setspeed)
  __cpufreq_driver_target(policy, policy->min, CPUFREQ_RELATION_L);
 else
  __cpufreq_driver_target(policy, *setspeed, CPUFREQ_RELATION_L);

 mutex_unlock(&userspace_mutex);
}

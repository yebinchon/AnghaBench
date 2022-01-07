
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int rwsem; } ;


 int __cpufreq_driver_target (struct cpufreq_policy*,unsigned int,unsigned int) ;
 int down_write (int *) ;
 int up_write (int *) ;

int cpufreq_driver_target(struct cpufreq_policy *policy,
     unsigned int target_freq,
     unsigned int relation)
{
 int ret;

 down_write(&policy->rwsem);

 ret = __cpufreq_driver_target(policy, target_freq, relation);

 up_write(&policy->rwsem);

 return ret;
}

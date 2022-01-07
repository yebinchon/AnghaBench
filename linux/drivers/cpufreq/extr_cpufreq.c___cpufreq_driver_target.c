
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {unsigned int cur; unsigned int restore_freq; int cpu; int max; int min; } ;
struct TYPE_2__ {int (* target ) (struct cpufreq_policy*,unsigned int,unsigned int) ;int target_index; } ;


 int EINVAL ;
 int ENODEV ;
 int __target_index (struct cpufreq_policy*,int) ;
 unsigned int clamp_val (unsigned int,int ,int ) ;
 scalar_t__ cpufreq_disabled () ;
 TYPE_1__* cpufreq_driver ;
 int cpufreq_frequency_table_target (struct cpufreq_policy*,unsigned int,unsigned int) ;
 int pr_debug (char*,int ,unsigned int,unsigned int,unsigned int) ;
 int stub1 (struct cpufreq_policy*,unsigned int,unsigned int) ;

int __cpufreq_driver_target(struct cpufreq_policy *policy,
       unsigned int target_freq,
       unsigned int relation)
{
 unsigned int old_target_freq = target_freq;
 int index;

 if (cpufreq_disabled())
  return -ENODEV;


 target_freq = clamp_val(target_freq, policy->min, policy->max);

 pr_debug("target for CPU %u: %u kHz, relation %u, requested %u kHz\n",
   policy->cpu, target_freq, relation, old_target_freq);







 if (target_freq == policy->cur)
  return 0;


 policy->restore_freq = policy->cur;

 if (cpufreq_driver->target)
  return cpufreq_driver->target(policy, target_freq, relation);

 if (!cpufreq_driver->target_index)
  return -EINVAL;

 index = cpufreq_frequency_table_target(policy, target_freq, relation);

 return __target_index(policy, index);
}

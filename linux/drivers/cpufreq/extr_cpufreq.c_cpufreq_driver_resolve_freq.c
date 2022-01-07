
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cpufreq_policy {unsigned int cached_target_freq; int cached_resolved_idx; TYPE_1__* freq_table; int max; int min; } ;
struct TYPE_4__ {unsigned int (* resolve_freq ) (struct cpufreq_policy*,unsigned int) ;scalar_t__ target_index; } ;
struct TYPE_3__ {unsigned int frequency; } ;


 int CPUFREQ_RELATION_L ;
 unsigned int clamp_val (unsigned int,int ,int ) ;
 TYPE_2__* cpufreq_driver ;
 int cpufreq_frequency_table_target (struct cpufreq_policy*,unsigned int,int ) ;
 unsigned int stub1 (struct cpufreq_policy*,unsigned int) ;

unsigned int cpufreq_driver_resolve_freq(struct cpufreq_policy *policy,
      unsigned int target_freq)
{
 target_freq = clamp_val(target_freq, policy->min, policy->max);
 policy->cached_target_freq = target_freq;

 if (cpufreq_driver->target_index) {
  int idx;

  idx = cpufreq_frequency_table_target(policy, target_freq,
           CPUFREQ_RELATION_L);
  policy->cached_resolved_idx = idx;
  return policy->freq_table[idx].frequency;
 }

 if (cpufreq_driver->resolve_freq)
  return cpufreq_driver->resolve_freq(policy, target_freq);

 return target_freq;
}

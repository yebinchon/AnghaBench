
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {int max; int min; } ;
struct TYPE_2__ {unsigned int (* fast_switch ) (struct cpufreq_policy*,unsigned int) ;} ;


 unsigned int clamp_val (unsigned int,int ,int ) ;
 TYPE_1__* cpufreq_driver ;
 unsigned int stub1 (struct cpufreq_policy*,unsigned int) ;

unsigned int cpufreq_driver_fast_switch(struct cpufreq_policy *policy,
     unsigned int target_freq)
{
 target_freq = clamp_val(target_freq, policy->min, policy->max);

 return cpufreq_driver->fast_switch(policy, target_freq);
}

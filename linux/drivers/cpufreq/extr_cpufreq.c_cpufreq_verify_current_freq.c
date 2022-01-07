
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {unsigned int cur; int update; scalar_t__ fast_switch_enabled; int cpu; } ;
struct TYPE_2__ {unsigned int (* get ) (int ) ;} ;


 TYPE_1__* cpufreq_driver ;
 int cpufreq_out_of_sync (struct cpufreq_policy*,unsigned int) ;
 int has_target () ;
 int schedule_work (int *) ;
 unsigned int stub1 (int ) ;

__attribute__((used)) static unsigned int cpufreq_verify_current_freq(struct cpufreq_policy *policy, bool update)
{
 unsigned int new_freq;

 new_freq = cpufreq_driver->get(policy->cpu);
 if (!new_freq)
  return 0;





 if (policy->fast_switch_enabled || !has_target())
  return new_freq;

 if (policy->cur != new_freq) {
  cpufreq_out_of_sync(policy, new_freq);
  if (update)
   schedule_work(&policy->update);
 }

 return new_freq;
}

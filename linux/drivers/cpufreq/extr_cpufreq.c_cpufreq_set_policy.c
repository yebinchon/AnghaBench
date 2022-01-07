
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {struct cpufreq_governor* governor; int policy; void* max; void* min; int cached_target_freq; int constraints; int cpuinfo; int cpu; } ;
struct cpufreq_governor {int name; } ;
struct TYPE_2__ {int (* verify ) (struct cpufreq_policy*) ;int (* setpolicy ) (struct cpufreq_policy*) ;} ;


 int FREQ_QOS_MAX ;
 int FREQ_QOS_MIN ;
 int UINT_MAX ;
 TYPE_1__* cpufreq_driver ;
 int cpufreq_exit_governor (struct cpufreq_policy*) ;
 int cpufreq_governor_limits (struct cpufreq_policy*) ;
 int cpufreq_init_governor (struct cpufreq_policy*) ;
 int cpufreq_start_governor (struct cpufreq_policy*) ;
 int cpufreq_stop_governor (struct cpufreq_policy*) ;
 void* freq_qos_read_value (int *,int ) ;
 int memcpy (int *,int *,int) ;
 int pr_debug (char*,...) ;
 int sched_cpufreq_governor_change (struct cpufreq_policy*,struct cpufreq_governor*) ;
 int stub1 (struct cpufreq_policy*) ;
 int stub2 (struct cpufreq_policy*) ;
 int trace_cpu_frequency_limits (struct cpufreq_policy*) ;

int cpufreq_set_policy(struct cpufreq_policy *policy,
         struct cpufreq_policy *new_policy)
{
 struct cpufreq_governor *old_gov;
 int ret;

 pr_debug("setting new policy for CPU %u: %u - %u kHz\n",
   new_policy->cpu, new_policy->min, new_policy->max);

 memcpy(&new_policy->cpuinfo, &policy->cpuinfo, sizeof(policy->cpuinfo));





 new_policy->min = freq_qos_read_value(&policy->constraints, FREQ_QOS_MIN);
 new_policy->max = freq_qos_read_value(&policy->constraints, FREQ_QOS_MAX);


 ret = cpufreq_driver->verify(new_policy);
 if (ret)
  return ret;

 policy->min = new_policy->min;
 policy->max = new_policy->max;
 trace_cpu_frequency_limits(policy);

 policy->cached_target_freq = UINT_MAX;

 pr_debug("new min and max freqs are %u - %u kHz\n",
   policy->min, policy->max);

 if (cpufreq_driver->setpolicy) {
  policy->policy = new_policy->policy;
  pr_debug("setting range\n");
  return cpufreq_driver->setpolicy(policy);
 }

 if (new_policy->governor == policy->governor) {
  pr_debug("governor limits update\n");
  cpufreq_governor_limits(policy);
  return 0;
 }

 pr_debug("governor switch\n");


 old_gov = policy->governor;

 if (old_gov) {
  cpufreq_stop_governor(policy);
  cpufreq_exit_governor(policy);
 }


 policy->governor = new_policy->governor;
 ret = cpufreq_init_governor(policy);
 if (!ret) {
  ret = cpufreq_start_governor(policy);
  if (!ret) {
   pr_debug("governor change\n");
   sched_cpufreq_governor_change(policy, old_gov);
   return 0;
  }
  cpufreq_exit_governor(policy);
 }


 pr_debug("starting governor %s failed\n", policy->governor->name);
 if (old_gov) {
  policy->governor = old_gov;
  if (cpufreq_init_governor(policy))
   policy->governor = ((void*)0);
  else
   cpufreq_start_governor(policy);
 }

 return ret;
}

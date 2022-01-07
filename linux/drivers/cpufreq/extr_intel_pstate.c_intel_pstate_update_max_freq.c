
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int max_freq; } ;
struct cpufreq_policy {TYPE_1__ cpuinfo; } ;
struct TYPE_5__ {int turbo_freq; int max_freq; } ;
struct cpudata {TYPE_2__ pstate; } ;
struct TYPE_6__ {scalar_t__ turbo_disabled_mf; } ;


 struct cpudata** all_cpu_data ;
 struct cpufreq_policy* cpufreq_cpu_acquire (unsigned int) ;
 int cpufreq_cpu_release (struct cpufreq_policy*) ;
 TYPE_3__ global ;
 int refresh_frequency_limits (struct cpufreq_policy*) ;

__attribute__((used)) static void intel_pstate_update_max_freq(unsigned int cpu)
{
 struct cpufreq_policy *policy = cpufreq_cpu_acquire(cpu);
 struct cpudata *cpudata;

 if (!policy)
  return;

 cpudata = all_cpu_data[cpu];
 policy->cpuinfo.max_freq = global.turbo_disabled_mf ?
   cpudata->pstate.max_freq : cpudata->pstate.turbo_freq;

 refresh_frequency_limits(policy);

 cpufreq_cpu_release(policy);
}

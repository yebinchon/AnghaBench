
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int min_freq; } ;
struct cpufreq_policy {size_t cpu; TYPE_1__ cpuinfo; } ;
struct cpudata {int dummy; } ;


 struct cpudata** all_cpu_data ;
 int cpufreq_verify_within_limits (struct cpufreq_policy*,int ,int ) ;
 int intel_pstate_adjust_policy_max (struct cpufreq_policy*,struct cpudata*) ;
 int intel_pstate_get_max_freq (struct cpudata*) ;
 int intel_pstate_update_perf_limits (struct cpufreq_policy*,struct cpudata*) ;
 int update_turbo_state () ;

__attribute__((used)) static int intel_cpufreq_verify_policy(struct cpufreq_policy *policy)
{
 struct cpudata *cpu = all_cpu_data[policy->cpu];

 update_turbo_state();
 cpufreq_verify_within_limits(policy, policy->cpuinfo.min_freq,
         intel_pstate_get_max_freq(cpu));

 intel_pstate_adjust_policy_max(policy, cpu);

 intel_pstate_update_perf_limits(policy, cpu);

 return 0;
}

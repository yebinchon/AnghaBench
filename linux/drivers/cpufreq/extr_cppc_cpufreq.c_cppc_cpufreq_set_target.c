
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct cpufreq_policy {size_t cpu; int cur; } ;
struct cpufreq_freqs {unsigned int new; int old; } ;
struct TYPE_2__ {scalar_t__ desired_perf; } ;
struct cppc_cpudata {int cpu; TYPE_1__ perf_ctrls; } ;


 struct cppc_cpudata** all_cpu_data ;
 scalar_t__ cppc_cpufreq_khz_to_perf (struct cppc_cpudata*,unsigned int) ;
 int cppc_set_perf (int ,TYPE_1__*) ;
 int cpufreq_freq_transition_begin (struct cpufreq_policy*,struct cpufreq_freqs*) ;
 int cpufreq_freq_transition_end (struct cpufreq_policy*,struct cpufreq_freqs*,int) ;
 int pr_debug (char*,int ,int) ;

__attribute__((used)) static int cppc_cpufreq_set_target(struct cpufreq_policy *policy,
  unsigned int target_freq,
  unsigned int relation)
{
 struct cppc_cpudata *cpu;
 struct cpufreq_freqs freqs;
 u32 desired_perf;
 int ret = 0;

 cpu = all_cpu_data[policy->cpu];

 desired_perf = cppc_cpufreq_khz_to_perf(cpu, target_freq);

 if (desired_perf == cpu->perf_ctrls.desired_perf)
  return ret;

 cpu->perf_ctrls.desired_perf = desired_perf;
 freqs.old = policy->cur;
 freqs.new = target_freq;

 cpufreq_freq_transition_begin(policy, &freqs);
 ret = cppc_set_perf(cpu->cpu, &cpu->perf_ctrls);
 cpufreq_freq_transition_end(policy, &freqs, ret != 0);

 if (ret)
  pr_debug("Failed to set target on CPU:%d. ret:%d\n",
    cpu->cpu, ret);

 return ret;
}

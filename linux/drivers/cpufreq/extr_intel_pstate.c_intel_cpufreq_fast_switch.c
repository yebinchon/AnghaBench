
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {size_t cpu; } ;
struct TYPE_2__ {int scaling; int current_pstate; } ;
struct cpudata {TYPE_1__ pstate; } ;


 int DIV_ROUND_UP (unsigned int,int) ;
 int INTEL_PSTATE_TRACE_FAST_SWITCH ;
 struct cpudata** all_cpu_data ;
 int intel_cpufreq_trace (struct cpudata*,int ,int) ;
 int intel_pstate_prepare_request (struct cpudata*,int) ;
 int intel_pstate_update_pstate (struct cpudata*,int) ;
 int update_turbo_state () ;

__attribute__((used)) static unsigned int intel_cpufreq_fast_switch(struct cpufreq_policy *policy,
           unsigned int target_freq)
{
 struct cpudata *cpu = all_cpu_data[policy->cpu];
 int target_pstate, old_pstate;

 update_turbo_state();

 target_pstate = DIV_ROUND_UP(target_freq, cpu->pstate.scaling);
 target_pstate = intel_pstate_prepare_request(cpu, target_pstate);
 old_pstate = cpu->pstate.current_pstate;
 intel_pstate_update_pstate(cpu, target_pstate);
 intel_cpufreq_trace(cpu, INTEL_PSTATE_TRACE_FAST_SWITCH, old_pstate);
 return target_pstate * cpu->pstate.scaling;
}

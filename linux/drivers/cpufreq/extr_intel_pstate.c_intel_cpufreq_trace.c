
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sample {int tsc; int aperf; int mperf; } ;
struct TYPE_2__ {int current_pstate; } ;
struct cpudata {int iowait_boost; TYPE_1__ pstate; struct sample sample; } ;


 int fp_toint (int) ;
 int get_avg_frequency (struct cpudata*) ;
 int intel_pstate_sample (struct cpudata*,int ) ;
 int ktime_get () ;
 int trace_pstate_sample (unsigned int,int ,int,int ,int ,int ,int ,int ,int ) ;
 int trace_pstate_sample_enabled () ;

__attribute__((used)) static void intel_cpufreq_trace(struct cpudata *cpu, unsigned int trace_type, int old_pstate)
{
 struct sample *sample;

 if (!trace_pstate_sample_enabled())
  return;

 if (!intel_pstate_sample(cpu, ktime_get()))
  return;

 sample = &cpu->sample;
 trace_pstate_sample(trace_type,
  0,
  old_pstate,
  cpu->pstate.current_pstate,
  sample->mperf,
  sample->aperf,
  sample->tsc,
  get_avg_frequency(cpu),
  fp_toint(cpu->iowait_boost * 100));
}

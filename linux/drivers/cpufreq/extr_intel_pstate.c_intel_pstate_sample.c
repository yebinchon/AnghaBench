
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ mperf; scalar_t__ tsc; scalar_t__ aperf; scalar_t__ time; } ;
struct cpudata {scalar_t__ prev_mperf; scalar_t__ prev_tsc; scalar_t__ last_sample_time; scalar_t__ prev_aperf; TYPE_1__ sample; } ;


 int MSR_IA32_APERF ;
 int MSR_IA32_MPERF ;
 int intel_pstate_calc_avg_perf (struct cpudata*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int rdmsrl (int ,scalar_t__) ;
 scalar_t__ rdtsc () ;

__attribute__((used)) static inline bool intel_pstate_sample(struct cpudata *cpu, u64 time)
{
 u64 aperf, mperf;
 unsigned long flags;
 u64 tsc;

 local_irq_save(flags);
 rdmsrl(MSR_IA32_APERF, aperf);
 rdmsrl(MSR_IA32_MPERF, mperf);
 tsc = rdtsc();
 if (cpu->prev_mperf == mperf || cpu->prev_tsc == tsc) {
  local_irq_restore(flags);
  return 0;
 }
 local_irq_restore(flags);

 cpu->last_sample_time = cpu->sample.time;
 cpu->sample.time = time;
 cpu->sample.aperf = aperf;
 cpu->sample.mperf = mperf;
 cpu->sample.tsc = tsc;
 cpu->sample.aperf -= cpu->prev_aperf;
 cpu->sample.mperf -= cpu->prev_mperf;
 cpu->sample.tsc -= cpu->prev_tsc;

 cpu->prev_aperf = aperf;
 cpu->prev_mperf = mperf;
 cpu->prev_tsc = tsc;







 if (cpu->last_sample_time) {
  intel_pstate_calc_avg_perf(cpu);
  return 1;
 }
 return 0;
}

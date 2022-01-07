
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sample {int mperf; int aperf; int core_avg_perf; } ;
struct cpudata {struct sample sample; } ;


 int div_ext_fp (int ,int ) ;

__attribute__((used)) static inline void intel_pstate_calc_avg_perf(struct cpudata *cpu)
{
 struct sample *sample = &cpu->sample;

 sample->core_avg_perf = div_ext_fp(sample->aperf, sample->mperf);
}

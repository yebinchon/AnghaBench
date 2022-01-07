
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sample {int mperf; int busy_scaled; int tsc; } ;
struct TYPE_3__ {int max_pstate; int turbo_pstate; int min_pstate; } ;
struct cpudata {int aperf_mperf_shift; int iowait_boost; TYPE_1__ pstate; struct sample sample; } ;
typedef int int32_t ;
struct TYPE_4__ {scalar_t__ turbo_disabled; scalar_t__ no_turbo; } ;


 int div_fp (int,int ) ;
 int get_avg_pstate (struct cpudata*) ;
 TYPE_2__ global ;
 int mul_fp (int,int) ;

__attribute__((used)) static inline int32_t get_target_pstate(struct cpudata *cpu)
{
 struct sample *sample = &cpu->sample;
 int32_t busy_frac;
 int target, avg_pstate;

 busy_frac = div_fp(sample->mperf << cpu->aperf_mperf_shift,
      sample->tsc);

 if (busy_frac < cpu->iowait_boost)
  busy_frac = cpu->iowait_boost;

 sample->busy_scaled = busy_frac * 100;

 target = global.no_turbo || global.turbo_disabled ?
   cpu->pstate.max_pstate : cpu->pstate.turbo_pstate;
 target += target >> 2;
 target = mul_fp(target, busy_frac);
 if (target < cpu->pstate.min_pstate)
  target = cpu->pstate.min_pstate;
 avg_pstate = get_avg_pstate(cpu);
 if (avg_pstate > target)
  target += (avg_pstate - target) >> 1;

 return target;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ time; } ;
struct cpudata {TYPE_1__ sample; scalar_t__ last_update; scalar_t__ hwp_boost_min; int hwp_req_cached; } ;


 int MSR_HWP_REQUEST ;
 scalar_t__ hwp_boost_hold_time_ns ;
 int time_after64 (scalar_t__,scalar_t__) ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static inline void intel_pstate_hwp_boost_down(struct cpudata *cpu)
{
 if (cpu->hwp_boost_min) {
  bool expired;


  expired = time_after64(cpu->sample.time, cpu->last_update +
           hwp_boost_hold_time_ns);
  if (expired) {
   wrmsrl(MSR_HWP_REQUEST, cpu->hwp_req_cached);
   cpu->hwp_boost_min = 0;
  }
 }
 cpu->last_update = cpu->sample.time;
}

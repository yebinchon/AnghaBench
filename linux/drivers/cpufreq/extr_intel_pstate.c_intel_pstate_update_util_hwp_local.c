
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
struct TYPE_2__ {void* time; } ;
struct cpudata {int sched_flags; void* last_io_update; TYPE_1__ sample; } ;


 int SCHED_CPUFREQ_IOWAIT ;
 int TICK_NSEC ;
 int intel_pstate_hwp_boost_down (struct cpudata*) ;
 int intel_pstate_hwp_boost_up (struct cpudata*) ;
 scalar_t__ time_before64 (void*,void*) ;

__attribute__((used)) static inline void intel_pstate_update_util_hwp_local(struct cpudata *cpu,
            u64 time)
{
 cpu->sample.time = time;

 if (cpu->sched_flags & SCHED_CPUFREQ_IOWAIT) {
  bool do_io = 0;

  cpu->sched_flags = 0;







  if (time_before64(time, cpu->last_io_update + 2 * TICK_NSEC))
   do_io = 1;

  cpu->last_io_update = time;

  if (do_io)
   intel_pstate_hwp_boost_up(cpu);

 } else {
  intel_pstate_hwp_boost_down(cpu);
 }
}

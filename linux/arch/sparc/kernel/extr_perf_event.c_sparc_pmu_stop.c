
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; } ;
struct perf_event {TYPE_1__ hw; } ;
struct cpu_hw_events {int dummy; } ;


 int PERF_EF_UPDATE ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int active_event_index (struct cpu_hw_events*,struct perf_event*) ;
 int cpu_hw_events ;
 int sparc_perf_event_update (struct perf_event*,TYPE_1__*,int) ;
 int sparc_pmu_disable_event (struct cpu_hw_events*,TYPE_1__*,int) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static void sparc_pmu_stop(struct perf_event *event, int flags)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 int idx = active_event_index(cpuc, event);

 if (!(event->hw.state & PERF_HES_STOPPED)) {
  sparc_pmu_disable_event(cpuc, &event->hw, idx);
  event->hw.state |= PERF_HES_STOPPED;
 }

 if (!(event->hw.state & PERF_HES_UPTODATE) && (flags & PERF_EF_UPDATE)) {
  sparc_perf_event_update(event, &event->hw, idx);
  event->hw.state |= PERF_HES_UPTODATE;
 }
}

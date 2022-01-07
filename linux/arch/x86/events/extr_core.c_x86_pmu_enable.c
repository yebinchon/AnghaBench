
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmu {int dummy; } ;
struct hw_perf_event {int idx; int state; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cpu_hw_events {int n_added; int enabled; int n_events; struct perf_event** event_list; } ;
struct TYPE_2__ {int (* enable_all ) (int) ;} ;


 int PERF_EF_RELOAD ;
 int PERF_EF_UPDATE ;
 int PERF_HES_ARCH ;
 int PERF_HES_STOPPED ;
 int barrier () ;
 int cpu_hw_events ;
 scalar_t__ match_prev_assignment (struct hw_perf_event*,struct cpu_hw_events*,int) ;
 int perf_events_lapic_init () ;
 int stub1 (int) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 int x86_assign_hw_event (struct perf_event*,struct cpu_hw_events*,int) ;
 TYPE_1__ x86_pmu ;
 int x86_pmu_initialized () ;
 int x86_pmu_start (struct perf_event*,int ) ;
 int x86_pmu_stop (struct perf_event*,int ) ;

__attribute__((used)) static void x86_pmu_enable(struct pmu *pmu)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 struct perf_event *event;
 struct hw_perf_event *hwc;
 int i, added = cpuc->n_added;

 if (!x86_pmu_initialized())
  return;

 if (cpuc->enabled)
  return;

 if (cpuc->n_added) {
  int n_running = cpuc->n_events - cpuc->n_added;






  for (i = 0; i < n_running; i++) {
   event = cpuc->event_list[i];
   hwc = &event->hw;







   if (hwc->idx == -1 ||
       match_prev_assignment(hwc, cpuc, i))
    continue;





   if (hwc->state & PERF_HES_STOPPED)
    hwc->state |= PERF_HES_ARCH;

   x86_pmu_stop(event, PERF_EF_UPDATE);
  }




  for (i = 0; i < cpuc->n_events; i++) {
   event = cpuc->event_list[i];
   hwc = &event->hw;

   if (!match_prev_assignment(hwc, cpuc, i))
    x86_assign_hw_event(event, cpuc, i);
   else if (i < n_running)
    continue;

   if (hwc->state & PERF_HES_ARCH)
    continue;

   x86_pmu_start(event, PERF_EF_RELOAD);
  }
  cpuc->n_added = 0;
  perf_events_lapic_init();
 }

 cpuc->enabled = 1;
 barrier();

 x86_pmu.enable_all(added);
}

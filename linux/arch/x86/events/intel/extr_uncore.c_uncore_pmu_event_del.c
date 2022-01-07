
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idx; unsigned long long last_tag; } ;
struct perf_event {TYPE_1__ hw; } ;
struct intel_uncore_box {int n_events; struct perf_event** event_list; } ;


 int PERF_EF_UPDATE ;
 struct intel_uncore_box* uncore_event_to_box (struct perf_event*) ;
 scalar_t__ uncore_pmc_freerunning (int) ;
 int uncore_pmu_event_stop (struct perf_event*,int ) ;
 int uncore_put_event_constraint (struct intel_uncore_box*,struct perf_event*) ;

void uncore_pmu_event_del(struct perf_event *event, int flags)
{
 struct intel_uncore_box *box = uncore_event_to_box(event);
 int i;

 uncore_pmu_event_stop(event, PERF_EF_UPDATE);






 if (uncore_pmc_freerunning(event->hw.idx))
  return;

 for (i = 0; i < box->n_events; i++) {
  if (event == box->event_list[i]) {
   uncore_put_event_constraint(box, event);

   for (++i; i < box->n_events; i++)
    box->event_list[i - 1] = box->event_list[i];

   --box->n_events;
   break;
  }
 }

 event->hw.idx = -1;
 event->hw.last_tag = ~0ULL;
}

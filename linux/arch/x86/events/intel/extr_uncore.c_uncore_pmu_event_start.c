
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idx; int state; int prev_count; } ;
struct perf_event {TYPE_1__ hw; int active_entry; } ;
struct intel_uncore_box {int n_active; int active_mask; struct perf_event** events; int active_list; } ;


 int PERF_HES_STOPPED ;
 int UNCORE_PMC_IDX_MAX ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int __set_bit (int,int ) ;
 int list_add_tail (int *,int *) ;
 int local64_set (int *,int ) ;
 int uncore_enable_event (struct intel_uncore_box*,struct perf_event*) ;
 struct intel_uncore_box* uncore_event_to_box (struct perf_event*) ;
 scalar_t__ uncore_pmc_freerunning (int) ;
 int uncore_pmu_start_hrtimer (struct intel_uncore_box*) ;
 int uncore_read_counter (struct intel_uncore_box*,struct perf_event*) ;

void uncore_pmu_event_start(struct perf_event *event, int flags)
{
 struct intel_uncore_box *box = uncore_event_to_box(event);
 int idx = event->hw.idx;

 if (WARN_ON_ONCE(idx == -1 || idx >= UNCORE_PMC_IDX_MAX))
  return;







 if (uncore_pmc_freerunning(event->hw.idx)) {
  list_add_tail(&event->active_entry, &box->active_list);
  local64_set(&event->hw.prev_count,
       uncore_read_counter(box, event));
  if (box->n_active++ == 0)
   uncore_pmu_start_hrtimer(box);
  return;
 }

 if (WARN_ON_ONCE(!(event->hw.state & PERF_HES_STOPPED)))
  return;

 event->hw.state = 0;
 box->events[idx] = event;
 box->n_active++;
 __set_bit(idx, box->active_mask);

 local64_set(&event->hw.prev_count, uncore_read_counter(box, event));
 uncore_enable_event(box, event);

 if (box->n_active == 1)
  uncore_pmu_start_hrtimer(box);
}

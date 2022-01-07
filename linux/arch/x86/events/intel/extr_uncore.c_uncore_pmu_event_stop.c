
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {size_t idx; int state; } ;
struct perf_event {int active_entry; struct hw_perf_event hw; } ;
struct intel_uncore_box {scalar_t__ n_active; int ** events; int active_mask; } ;


 int PERF_EF_UPDATE ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ __test_and_clear_bit (size_t,int ) ;
 int list_del (int *) ;
 int uncore_disable_event (struct intel_uncore_box*,struct perf_event*) ;
 struct intel_uncore_box* uncore_event_to_box (struct perf_event*) ;
 int uncore_perf_event_update (struct intel_uncore_box*,struct perf_event*) ;
 scalar_t__ uncore_pmc_freerunning (size_t) ;
 int uncore_pmu_cancel_hrtimer (struct intel_uncore_box*) ;

void uncore_pmu_event_stop(struct perf_event *event, int flags)
{
 struct intel_uncore_box *box = uncore_event_to_box(event);
 struct hw_perf_event *hwc = &event->hw;


 if (uncore_pmc_freerunning(hwc->idx)) {
  list_del(&event->active_entry);
  if (--box->n_active == 0)
   uncore_pmu_cancel_hrtimer(box);
  uncore_perf_event_update(box, event);
  return;
 }

 if (__test_and_clear_bit(hwc->idx, box->active_mask)) {
  uncore_disable_event(box, event);
  box->n_active--;
  box->events[hwc->idx] = ((void*)0);
  WARN_ON_ONCE(hwc->state & PERF_HES_STOPPED);
  hwc->state |= PERF_HES_STOPPED;

  if (box->n_active == 0)
   uncore_pmu_cancel_hrtimer(box);
 }

 if ((flags & PERF_EF_UPDATE) && !(hwc->state & PERF_HES_UPTODATE)) {




  uncore_perf_event_update(box, event);
  hwc->state |= PERF_HES_UPTODATE;
 }
}

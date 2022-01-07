
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rapl_pmu {scalar_t__ n_active; int lock; int hrtimer; } ;
struct hw_perf_event {int state; } ;
struct perf_event {int active_entry; struct hw_perf_event hw; struct rapl_pmu* pmu_private; } ;


 int PERF_EF_UPDATE ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int WARN_ON_ONCE (int) ;
 int hrtimer_cancel (int *) ;
 int list_del (int *) ;
 int rapl_event_update (struct perf_event*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rapl_pmu_event_stop(struct perf_event *event, int mode)
{
 struct rapl_pmu *pmu = event->pmu_private;
 struct hw_perf_event *hwc = &event->hw;
 unsigned long flags;

 raw_spin_lock_irqsave(&pmu->lock, flags);


 if (!(hwc->state & PERF_HES_STOPPED)) {
  WARN_ON_ONCE(pmu->n_active <= 0);
  pmu->n_active--;
  if (pmu->n_active == 0)
   hrtimer_cancel(&pmu->hrtimer);

  list_del(&event->active_entry);

  WARN_ON_ONCE(hwc->state & PERF_HES_STOPPED);
  hwc->state |= PERF_HES_STOPPED;
 }


 if ((mode & PERF_EF_UPDATE) && !(hwc->state & PERF_HES_UPTODATE)) {




  rapl_event_update(event);
  hwc->state |= PERF_HES_UPTODATE;
 }

 raw_spin_unlock_irqrestore(&pmu->lock, flags);
}

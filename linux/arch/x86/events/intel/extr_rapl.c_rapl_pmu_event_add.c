
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rapl_pmu {int lock; } ;
struct hw_perf_event {int state; } ;
struct perf_event {struct hw_perf_event hw; struct rapl_pmu* pmu_private; } ;


 int PERF_EF_START ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int __rapl_pmu_event_start (struct rapl_pmu*,struct perf_event*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int rapl_pmu_event_add(struct perf_event *event, int mode)
{
 struct rapl_pmu *pmu = event->pmu_private;
 struct hw_perf_event *hwc = &event->hw;
 unsigned long flags;

 raw_spin_lock_irqsave(&pmu->lock, flags);

 hwc->state = PERF_HES_UPTODATE | PERF_HES_STOPPED;

 if (mode & PERF_EF_START)
  __rapl_pmu_event_start(pmu, event);

 raw_spin_unlock_irqrestore(&pmu->lock, flags);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rapl_pmu {int lock; } ;
struct perf_event {struct rapl_pmu* pmu_private; } ;


 int __rapl_pmu_event_start (struct rapl_pmu*,struct perf_event*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rapl_pmu_event_start(struct perf_event *event, int mode)
{
 struct rapl_pmu *pmu = event->pmu_private;
 unsigned long flags;

 raw_spin_lock_irqsave(&pmu->lock, flags);
 __rapl_pmu_event_start(pmu, event);
 raw_spin_unlock_irqrestore(&pmu->lock, flags);
}

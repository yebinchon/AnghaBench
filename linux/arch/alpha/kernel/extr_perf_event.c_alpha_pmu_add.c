
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw_perf_event {int state; int event_base; } ;
struct perf_event {int pmu; struct hw_perf_event hw; } ;
struct cpu_hw_events {int n_events; int n_added; int * evtype; struct perf_event** event; int * current_idx; } ;
struct TYPE_2__ {int num_pmcs; } ;


 int EAGAIN ;
 int PERF_EF_START ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int PMC_NO_INDEX ;
 int alpha_check_constraints (struct perf_event**,int *,int) ;
 TYPE_1__* alpha_pmu ;
 int cpu_hw_events ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int perf_pmu_disable (int ) ;
 int perf_pmu_enable (int ) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static int alpha_pmu_add(struct perf_event *event, int flags)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 struct hw_perf_event *hwc = &event->hw;
 int n0;
 int ret;
 unsigned long irq_flags;
 perf_pmu_disable(event->pmu);
 local_irq_save(irq_flags);


 ret = -EAGAIN;


 n0 = cpuc->n_events;
 if (n0 < alpha_pmu->num_pmcs) {
  cpuc->event[n0] = event;
  cpuc->evtype[n0] = event->hw.event_base;
  cpuc->current_idx[n0] = PMC_NO_INDEX;

  if (!alpha_check_constraints(cpuc->event, cpuc->evtype, n0+1)) {
   cpuc->n_events++;
   cpuc->n_added++;
   ret = 0;
  }
 }

 hwc->state = PERF_HES_UPTODATE;
 if (!(flags & PERF_EF_START))
  hwc->state |= PERF_HES_STOPPED;

 local_irq_restore(irq_flags);
 perf_pmu_enable(event->pmu);

 return ret;
}

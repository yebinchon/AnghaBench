
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int state; int config; size_t config_base; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cpu_cf_events {int * ctr_set; int state; } ;


 int PERF_EF_RELOAD ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int atomic_inc (int *) ;
 int cpu_cf_events ;
 int ctr_set_enable (int *,size_t) ;
 int ctr_set_start (int *,size_t) ;
 int hw_perf_event_reset (struct perf_event*) ;
 struct cpu_cf_events* this_cpu_ptr (int *) ;

__attribute__((used)) static void cpumf_pmu_start(struct perf_event *event, int flags)
{
 struct cpu_cf_events *cpuhw = this_cpu_ptr(&cpu_cf_events);
 struct hw_perf_event *hwc = &event->hw;

 if (WARN_ON_ONCE(!(hwc->state & PERF_HES_STOPPED)))
  return;

 if (WARN_ON_ONCE(hwc->config == -1))
  return;

 if (flags & PERF_EF_RELOAD)
  WARN_ON_ONCE(!(hwc->state & PERF_HES_UPTODATE));

 hwc->state = 0;


 ctr_set_enable(&cpuhw->state, hwc->config_base);
 ctr_set_start(&cpuhw->state, hwc->config_base);






 hw_perf_event_reset(event);


 atomic_inc(&cpuhw->ctr_set[hwc->config_base]);
}

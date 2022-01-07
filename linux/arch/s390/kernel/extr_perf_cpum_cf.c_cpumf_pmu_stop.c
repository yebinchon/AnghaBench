
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int state; size_t config_base; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cpu_cf_events {int state; int * ctr_set; } ;


 int PERF_EF_UPDATE ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int atomic_dec_return (int *) ;
 int cpu_cf_events ;
 int ctr_set_stop (int *,size_t) ;
 int hw_perf_event_update (struct perf_event*) ;
 struct cpu_cf_events* this_cpu_ptr (int *) ;

__attribute__((used)) static void cpumf_pmu_stop(struct perf_event *event, int flags)
{
 struct cpu_cf_events *cpuhw = this_cpu_ptr(&cpu_cf_events);
 struct hw_perf_event *hwc = &event->hw;

 if (!(hwc->state & PERF_HES_STOPPED)) {




  if (!atomic_dec_return(&cpuhw->ctr_set[hwc->config_base]))
   ctr_set_stop(&cpuhw->state, hwc->config_base);
  event->hw.state |= PERF_HES_STOPPED;
 }

 if ((flags & PERF_EF_UPDATE) && !(hwc->state & PERF_HES_UPTODATE)) {
  hw_perf_event_update(event);
  event->hw.state |= PERF_HES_UPTODATE;
 }
}

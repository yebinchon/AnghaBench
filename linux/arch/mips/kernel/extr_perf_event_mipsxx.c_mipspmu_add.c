
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int idx; int state; } ;
struct perf_event {int pmu; struct hw_perf_event hw; } ;
struct cpu_hw_events {struct perf_event** events; } ;


 int PERF_EF_RELOAD ;
 int PERF_EF_START ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int cpu_hw_events ;
 int mipspmu_start (struct perf_event*,int ) ;
 int mipsxx_pmu_alloc_counter (struct cpu_hw_events*,struct hw_perf_event*) ;
 int mipsxx_pmu_disable_event (int) ;
 int perf_event_update_userpage (struct perf_event*) ;
 int perf_pmu_disable (int ) ;
 int perf_pmu_enable (int ) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static int mipspmu_add(struct perf_event *event, int flags)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 struct hw_perf_event *hwc = &event->hw;
 int idx;
 int err = 0;

 perf_pmu_disable(event->pmu);


 idx = mipsxx_pmu_alloc_counter(cpuc, hwc);
 if (idx < 0) {
  err = idx;
  goto out;
 }





 event->hw.idx = idx;
 mipsxx_pmu_disable_event(idx);
 cpuc->events[idx] = event;

 hwc->state = PERF_HES_STOPPED | PERF_HES_UPTODATE;
 if (flags & PERF_EF_START)
  mipspmu_start(event, PERF_EF_RELOAD);


 perf_event_update_userpage(event);

out:
 perf_pmu_enable(event->pmu);
 return err;
}

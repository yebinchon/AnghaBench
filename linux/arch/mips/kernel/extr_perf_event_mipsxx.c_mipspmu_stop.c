
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int state; int idx; } ;
struct perf_event {struct hw_perf_event hw; } ;


 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int barrier () ;
 int mipspmu_event_update (struct perf_event*,struct hw_perf_event*,int ) ;
 int mipsxx_pmu_disable_event (int ) ;

__attribute__((used)) static void mipspmu_stop(struct perf_event *event, int flags)
{
 struct hw_perf_event *hwc = &event->hw;

 if (!(hwc->state & PERF_HES_STOPPED)) {

  mipsxx_pmu_disable_event(hwc->idx);
  barrier();
  mipspmu_event_update(event, hwc, hwc->idx);
  hwc->state |= PERF_HES_STOPPED | PERF_HES_UPTODATE;
 }
}

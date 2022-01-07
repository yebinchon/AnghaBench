
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int state; int idx; } ;
struct perf_event {struct hw_perf_event hw; } ;


 int PERF_EF_RELOAD ;
 int PERF_HES_UPTODATE ;
 int WARN_ON_ONCE (int) ;
 int mipspmu_event_set_period (struct perf_event*,struct hw_perf_event*,int ) ;
 int mipsxx_pmu_enable_event (struct hw_perf_event*,int ) ;

__attribute__((used)) static void mipspmu_start(struct perf_event *event, int flags)
{
 struct hw_perf_event *hwc = &event->hw;

 if (flags & PERF_EF_RELOAD)
  WARN_ON_ONCE(!(hwc->state & PERF_HES_UPTODATE));

 hwc->state = 0;


 mipspmu_event_set_period(event, hwc, hwc->idx);


 mipsxx_pmu_enable_event(hwc, hwc->idx);
}

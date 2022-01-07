
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {scalar_t__ idx; } ;
struct perf_event {struct hw_perf_event hw; } ;


 int mipspmu_event_update (struct perf_event*,struct hw_perf_event*,scalar_t__) ;

__attribute__((used)) static void mipspmu_read(struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;


 if (hwc->idx < 0)
  return;

 mipspmu_event_update(event, hwc, hwc->idx);
}

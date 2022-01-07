
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int idx; } ;
struct perf_event {struct hw_perf_event hw; } ;


 int alpha_perf_event_update (struct perf_event*,struct hw_perf_event*,int ,int ) ;

__attribute__((used)) static void alpha_pmu_read(struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;

 alpha_perf_event_update(event, hwc, hwc->idx, 0);
}

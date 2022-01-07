
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int state; } ;
struct perf_event {struct hw_perf_event hw; } ;


 int PERF_EF_UPDATE ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int event_update (struct perf_event*) ;

__attribute__((used)) static void pmu_event_stop(struct perf_event *event, int mode)
{
 struct hw_perf_event *hwc = &event->hw;


 if (!(hwc->state & PERF_HES_STOPPED))
  hwc->state |= PERF_HES_STOPPED;


 if ((mode & PERF_EF_UPDATE) && !(hwc->state & PERF_HES_UPTODATE)) {




  event_update(event);
  hwc->state |= PERF_HES_UPTODATE;
 }
}

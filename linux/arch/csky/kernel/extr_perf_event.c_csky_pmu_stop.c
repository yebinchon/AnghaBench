
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct perf_event {TYPE_1__ hw; } ;


 int PERF_EF_UPDATE ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int csky_perf_event_update (struct perf_event*,TYPE_1__*) ;
 int csky_pmu_stop_event (struct perf_event*) ;

__attribute__((used)) static void csky_pmu_stop(struct perf_event *event, int flags)
{
 if (!(event->hw.state & PERF_HES_STOPPED)) {
  csky_pmu_stop_event(event);
  event->hw.state |= PERF_HES_STOPPED;
 }

 if ((flags & PERF_EF_UPDATE) &&
     !(event->hw.state & PERF_HES_UPTODATE)) {
  csky_perf_event_update(event, &event->hw);
  event->hw.state |= PERF_HES_UPTODATE;
 }
}

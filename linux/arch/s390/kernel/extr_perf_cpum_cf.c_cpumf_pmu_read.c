
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct perf_event {TYPE_1__ hw; } ;


 int PERF_HES_STOPPED ;
 int hw_perf_event_update (struct perf_event*) ;

__attribute__((used)) static void cpumf_pmu_read(struct perf_event *event)
{
 if (event->hw.state & PERF_HES_STOPPED)
  return;

 hw_perf_event_update(event);
}

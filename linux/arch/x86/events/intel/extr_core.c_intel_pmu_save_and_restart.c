
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prev_count; int event_base; } ;
struct perf_event {TYPE_1__ hw; } ;


 int event_is_checkpointed (struct perf_event*) ;
 int local64_set (int *,int ) ;
 scalar_t__ unlikely (int ) ;
 int wrmsrl (int ,int ) ;
 int x86_perf_event_set_period (struct perf_event*) ;
 int x86_perf_event_update (struct perf_event*) ;

int intel_pmu_save_and_restart(struct perf_event *event)
{
 x86_perf_event_update(event);






 if (unlikely(event_is_checkpointed(event))) {

  wrmsrl(event->hw.event_base, 0);
  local64_set(&event->hw.prev_count, 0);
 }
 return x86_perf_event_set_period(event);
}

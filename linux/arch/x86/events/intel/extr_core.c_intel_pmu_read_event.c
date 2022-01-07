
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct perf_event {TYPE_1__ hw; } ;


 int PERF_X86_EVENT_AUTO_RELOAD ;
 int intel_pmu_auto_reload_read (struct perf_event*) ;
 int x86_perf_event_update (struct perf_event*) ;

__attribute__((used)) static void intel_pmu_read_event(struct perf_event *event)
{
 if (event->hw.flags & PERF_X86_EVENT_AUTO_RELOAD)
  intel_pmu_auto_reload_read(event);
 else
  x86_perf_event_update(event);
}

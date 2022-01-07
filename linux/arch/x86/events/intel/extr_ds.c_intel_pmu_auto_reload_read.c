
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct perf_event {int pmu; TYPE_1__ hw; } ;


 int PERF_X86_EVENT_AUTO_RELOAD ;
 int WARN_ON (int) ;
 int intel_pmu_drain_pebs_buffer () ;
 int perf_pmu_disable (int ) ;
 int perf_pmu_enable (int ) ;

void intel_pmu_auto_reload_read(struct perf_event *event)
{
 WARN_ON(!(event->hw.flags & PERF_X86_EVENT_AUTO_RELOAD));

 perf_pmu_disable(event->pmu);
 intel_pmu_drain_pebs_buffer();
 perf_pmu_enable(event->pmu);
}

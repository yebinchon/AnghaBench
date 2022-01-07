
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int state; } ;
struct perf_event {int pmu; TYPE_2__ hw; } ;
struct TYPE_3__ {scalar_t__ cd; scalar_t__ cs; } ;
struct cpu_hw_sf {TYPE_1__ lsctl; } ;


 int PERF_EF_UPDATE ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int cpu_hw_sf ;
 int hw_perf_event_update (struct perf_event*,int) ;
 int perf_pmu_disable (int ) ;
 int perf_pmu_enable (int ) ;
 struct cpu_hw_sf* this_cpu_ptr (int *) ;

__attribute__((used)) static void cpumsf_pmu_stop(struct perf_event *event, int flags)
{
 struct cpu_hw_sf *cpuhw = this_cpu_ptr(&cpu_hw_sf);

 if (event->hw.state & PERF_HES_STOPPED)
  return;

 perf_pmu_disable(event->pmu);
 cpuhw->lsctl.cs = 0;
 cpuhw->lsctl.cd = 0;
 event->hw.state |= PERF_HES_STOPPED;

 if ((flags & PERF_EF_UPDATE) && !(event->hw.state & PERF_HES_UPTODATE)) {
  hw_perf_event_update(event, 1);
  event->hw.state |= PERF_HES_UPTODATE;
 }
 perf_pmu_enable(event->pmu);
}

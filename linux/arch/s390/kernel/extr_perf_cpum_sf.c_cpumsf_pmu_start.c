
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int state; } ;
struct perf_event {int pmu; TYPE_2__ hw; } ;
struct TYPE_3__ {int cs; int cd; } ;
struct cpu_hw_sf {TYPE_1__ lsctl; } ;


 int PERF_EF_RELOAD ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 scalar_t__ SAMPL_DIAG_MODE (TYPE_2__*) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int cpu_hw_sf ;
 int perf_pmu_disable (int ) ;
 int perf_pmu_enable (int ) ;
 struct cpu_hw_sf* this_cpu_ptr (int *) ;

__attribute__((used)) static void cpumsf_pmu_start(struct perf_event *event, int flags)
{
 struct cpu_hw_sf *cpuhw = this_cpu_ptr(&cpu_hw_sf);

 if (WARN_ON_ONCE(!(event->hw.state & PERF_HES_STOPPED)))
  return;

 if (flags & PERF_EF_RELOAD)
  WARN_ON_ONCE(!(event->hw.state & PERF_HES_UPTODATE));

 perf_pmu_disable(event->pmu);
 event->hw.state = 0;
 cpuhw->lsctl.cs = 1;
 if (SAMPL_DIAG_MODE(&event->hw))
  cpuhw->lsctl.cd = 1;
 perf_pmu_enable(event->pmu);
}

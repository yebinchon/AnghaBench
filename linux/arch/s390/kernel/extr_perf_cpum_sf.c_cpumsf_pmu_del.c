
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event {int pmu; int hw; } ;
struct TYPE_2__ {scalar_t__ ed; scalar_t__ es; } ;
struct cpu_hw_sf {int handle; int * event; int flags; TYPE_1__ lsctl; } ;


 int PERF_EF_UPDATE ;
 int PMU_F_IN_USE ;
 scalar_t__ SAMPL_DIAG_MODE (int *) ;
 int aux_output_end (int *) ;
 int cpu_hw_sf ;
 int cpumsf_pmu_stop (struct perf_event*,int ) ;
 int perf_event_update_userpage (struct perf_event*) ;
 int perf_pmu_disable (int ) ;
 int perf_pmu_enable (int ) ;
 struct cpu_hw_sf* this_cpu_ptr (int *) ;

__attribute__((used)) static void cpumsf_pmu_del(struct perf_event *event, int flags)
{
 struct cpu_hw_sf *cpuhw = this_cpu_ptr(&cpu_hw_sf);

 perf_pmu_disable(event->pmu);
 cpumsf_pmu_stop(event, PERF_EF_UPDATE);

 cpuhw->lsctl.es = 0;
 cpuhw->lsctl.ed = 0;
 cpuhw->flags &= ~PMU_F_IN_USE;
 cpuhw->event = ((void*)0);

 if (SAMPL_DIAG_MODE(&event->hw))
  aux_output_end(&cpuhw->handle);
 perf_event_update_userpage(event);
 perf_pmu_enable(event->pmu);
}

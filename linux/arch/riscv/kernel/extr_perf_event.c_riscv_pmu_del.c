
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hw_perf_event {size_t idx; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cpu_hw_events {int n_events; int ** events; } ;
struct TYPE_4__ {TYPE_1__* pmu; } ;
struct TYPE_3__ {int (* stop ) (struct perf_event*,int ) ;} ;


 int PERF_EF_UPDATE ;
 int cpu_hw_events ;
 int perf_event_update_userpage (struct perf_event*) ;
 TYPE_2__* riscv_pmu ;
 int stub1 (struct perf_event*,int ) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static void riscv_pmu_del(struct perf_event *event, int flags)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 struct hw_perf_event *hwc = &event->hw;

 cpuc->events[hwc->idx] = ((void*)0);
 cpuc->n_events--;
 riscv_pmu->pmu->stop(event, PERF_EF_UPDATE);
 perf_event_update_userpage(event);
}

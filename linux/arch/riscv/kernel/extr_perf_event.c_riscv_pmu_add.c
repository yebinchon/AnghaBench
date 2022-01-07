
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hw_perf_event {size_t idx; size_t config; int state; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cpu_hw_events {scalar_t__ n_events; struct perf_event** events; } ;
struct TYPE_4__ {scalar_t__ num_counters; TYPE_1__* pmu; } ;
struct TYPE_3__ {int (* start ) (struct perf_event*,int ) ;} ;


 int ENOSPC ;
 int PERF_EF_RELOAD ;
 int PERF_EF_START ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int cpu_hw_events ;
 TYPE_2__* riscv_pmu ;
 int stub1 (struct perf_event*,int ) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static int riscv_pmu_add(struct perf_event *event, int flags)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 struct hw_perf_event *hwc = &event->hw;

 if (cpuc->n_events == riscv_pmu->num_counters)
  return -ENOSPC;
 hwc->idx = hwc->config;
 cpuc->events[hwc->idx] = event;
 cpuc->n_events++;

 hwc->state = PERF_HES_UPTODATE | PERF_HES_STOPPED;

 if (flags & PERF_EF_START)
  riscv_pmu->pmu->start(event, PERF_EF_RELOAD);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw_perf_event {int state; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cpu_hw_events {int n_events; int txn_flags; int n_added; int n_txn; int assign; } ;
struct TYPE_2__ {int (* schedule_events ) (struct cpu_hw_events*,int,int*) ;int (* add ) (struct perf_event*) ;} ;


 int PERF_EF_START ;
 int PERF_HES_ARCH ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int PERF_PMU_TXN_ADD ;
 int X86_PMC_IDX_MAX ;
 int collect_events (struct cpu_hw_events*,struct perf_event*,int) ;
 int cpu_hw_events ;
 int memcpy (int ,int*,int) ;
 int stub1 (struct cpu_hw_events*,int,int*) ;
 int stub2 (struct perf_event*) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static int x86_pmu_add(struct perf_event *event, int flags)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 struct hw_perf_event *hwc;
 int assign[X86_PMC_IDX_MAX];
 int n, n0, ret;

 hwc = &event->hw;

 n0 = cpuc->n_events;
 ret = n = collect_events(cpuc, event, 0);
 if (ret < 0)
  goto out;

 hwc->state = PERF_HES_UPTODATE | PERF_HES_STOPPED;
 if (!(flags & PERF_EF_START))
  hwc->state |= PERF_HES_ARCH;
 if (cpuc->txn_flags & PERF_PMU_TXN_ADD)
  goto done_collect;

 ret = x86_pmu.schedule_events(cpuc, n, assign);
 if (ret)
  goto out;




 memcpy(cpuc->assign, assign, n*sizeof(int));

done_collect:




 cpuc->n_events = n;
 cpuc->n_added += n - n0;
 cpuc->n_txn += n - n0;

 if (x86_pmu.add) {




  x86_pmu.add(event);
 }

 ret = 0;
out:
 return ret;
}

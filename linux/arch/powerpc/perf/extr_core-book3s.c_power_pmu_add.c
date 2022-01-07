
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int branch_sample_type; } ;
struct TYPE_4__ {int state; int config; int event_base; } ;
struct perf_event {int pmu; TYPE_2__ attr; TYPE_1__ hw; } ;
struct cpu_hw_events {int n_events; int txn_flags; int bhrb_filter; int n_added; int * events; int * flags; struct perf_event** event; } ;
struct TYPE_6__ {int n_counter; int (* bhrb_filter_map ) (int ) ;} ;


 int EAGAIN ;
 int PERF_EF_START ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int PERF_PMU_TXN_ADD ;
 scalar_t__ check_excludes (struct perf_event**,int *,int,int) ;
 int cpu_hw_events ;
 int ebb_event_add (struct perf_event*) ;
 scalar_t__ has_branch_stack (struct perf_event*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int perf_pmu_disable (int ) ;
 int perf_pmu_enable (int ) ;
 scalar_t__ power_check_constraints (struct cpu_hw_events*,int *,int *,int) ;
 int power_pmu_bhrb_enable (struct perf_event*) ;
 TYPE_3__* ppmu ;
 int stub1 (int ) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static int power_pmu_add(struct perf_event *event, int ef_flags)
{
 struct cpu_hw_events *cpuhw;
 unsigned long flags;
 int n0;
 int ret = -EAGAIN;

 local_irq_save(flags);
 perf_pmu_disable(event->pmu);





 cpuhw = this_cpu_ptr(&cpu_hw_events);
 n0 = cpuhw->n_events;
 if (n0 >= ppmu->n_counter)
  goto out;
 cpuhw->event[n0] = event;
 cpuhw->events[n0] = event->hw.config;
 cpuhw->flags[n0] = event->hw.event_base;







 if (!(ef_flags & PERF_EF_START))
  event->hw.state = PERF_HES_STOPPED | PERF_HES_UPTODATE;
 else
  event->hw.state = 0;






 if (cpuhw->txn_flags & PERF_PMU_TXN_ADD)
  goto nocheck;

 if (check_excludes(cpuhw->event, cpuhw->flags, n0, 1))
  goto out;
 if (power_check_constraints(cpuhw, cpuhw->events, cpuhw->flags, n0 + 1))
  goto out;
 event->hw.config = cpuhw->events[n0];

nocheck:
 ebb_event_add(event);

 ++cpuhw->n_events;
 ++cpuhw->n_added;

 ret = 0;
 out:
 if (has_branch_stack(event)) {
  power_pmu_bhrb_enable(event);
  cpuhw->bhrb_filter = ppmu->bhrb_filter_map(
     event->attr.branch_sample_type);
 }

 perf_pmu_enable(event->pmu);
 local_irq_restore(flags);
 return ret;
}

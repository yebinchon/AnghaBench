
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event {int dummy; } ;
struct cpu_hw_events {int txn_flags; int n_events; int n_added; int ** event_constraint; struct perf_event** event_list; } ;
struct TYPE_2__ {int (* del ) (struct perf_event*) ;int (* put_event_constraints ) (struct cpu_hw_events*,struct perf_event*) ;} ;


 int PERF_EF_UPDATE ;
 int PERF_PMU_TXN_ADD ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int cpu_hw_events ;
 int perf_event_update_userpage (struct perf_event*) ;
 int stub1 (struct cpu_hw_events*,struct perf_event*) ;
 int stub2 (struct perf_event*) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 TYPE_1__ x86_pmu ;
 int x86_pmu_stop (struct perf_event*,int ) ;

__attribute__((used)) static void x86_pmu_del(struct perf_event *event, int flags)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 int i;
 if (cpuc->txn_flags & PERF_PMU_TXN_ADD)
  goto do_del;




 x86_pmu_stop(event, PERF_EF_UPDATE);

 for (i = 0; i < cpuc->n_events; i++) {
  if (event == cpuc->event_list[i])
   break;
 }

 if (WARN_ON_ONCE(i == cpuc->n_events))
  return;


 if (i >= cpuc->n_events - cpuc->n_added)
  --cpuc->n_added;

 if (x86_pmu.put_event_constraints)
  x86_pmu.put_event_constraints(cpuc, event);


 while (++i < cpuc->n_events) {
  cpuc->event_list[i-1] = cpuc->event_list[i];
  cpuc->event_constraint[i-1] = cpuc->event_constraint[i];
 }
 cpuc->event_constraint[i-1] = ((void*)0);
 --cpuc->n_events;

 perf_event_update_userpage(event);

do_del:
 if (x86_pmu.del) {




  x86_pmu.del(event);
 }
}

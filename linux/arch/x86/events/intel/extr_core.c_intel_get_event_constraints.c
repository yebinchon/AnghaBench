
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;
struct event_constraint {int flags; int weight; int idxmsk; } ;
struct cpu_hw_events {scalar_t__ excl_cntrs; struct event_constraint** event_constraint; } ;


 int PERF_X86_EVENT_DYNAMIC ;
 int WARN_ON_ONCE (int) ;
 int X86_PMC_IDX_MAX ;
 struct event_constraint* __intel_get_event_constraints (struct cpu_hw_events*,int,struct perf_event*) ;
 int bitmap_copy (int ,int ,int ) ;
 struct event_constraint* intel_get_excl_constraints (struct cpu_hw_events*,struct perf_event*,int,struct event_constraint*) ;

__attribute__((used)) static struct event_constraint *
intel_get_event_constraints(struct cpu_hw_events *cpuc, int idx,
       struct perf_event *event)
{
 struct event_constraint *c1, *c2;

 c1 = cpuc->event_constraint[idx];






 c2 = __intel_get_event_constraints(cpuc, idx, event);
 if (c1) {
         WARN_ON_ONCE(!(c1->flags & PERF_X86_EVENT_DYNAMIC));
  bitmap_copy(c1->idxmsk, c2->idxmsk, X86_PMC_IDX_MAX);
  c1->weight = c2->weight;
  c2 = c1;
 }

 if (cpuc->excl_cntrs)
  return intel_get_excl_constraints(cpuc, event, idx, c2);

 return c2;
}

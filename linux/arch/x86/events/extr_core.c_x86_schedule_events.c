
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hw_perf_event {int idx; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct event_constraint {int flags; unsigned long* idxmsk; int weight; } ;
struct cpu_hw_events {int n_events; int txn_flags; struct event_constraint** event_constraint; struct perf_event** event_list; TYPE_1__* excl_cntrs; int is_fake; scalar_t__ n_txn; } ;
struct TYPE_4__ {int num_counters; int (* stop_scheduling ) (struct cpu_hw_events*) ;int (* put_event_constraints ) (struct cpu_hw_events*,struct perf_event*) ;int (* commit_scheduling ) (struct cpu_hw_events*,int,int) ;struct event_constraint* (* get_event_constraints ) (struct cpu_hw_events*,int,struct perf_event*) ;int (* start_scheduling ) (struct cpu_hw_events*) ;} ;
struct TYPE_3__ {int exclusive_present; } ;


 int BITS_TO_LONGS (int) ;
 int EINVAL ;
 int PERF_PMU_TXN_ADD ;
 int PERF_X86_EVENT_DYNAMIC ;
 scalar_t__ READ_ONCE (int ) ;
 int WARN_ON_ONCE (int) ;
 int X86_PMC_IDX_MAX ;
 int __set_bit (int,unsigned long*) ;
 int bitmap_zero (unsigned long*,int) ;
 scalar_t__ is_ht_workaround_enabled () ;
 int max (int,int ) ;
 int min (int,int ) ;
 int perf_assign_events (struct event_constraint**,int,int,int,int,int*) ;
 int stub1 (struct cpu_hw_events*) ;
 struct event_constraint* stub2 (struct cpu_hw_events*,int,struct perf_event*) ;
 int stub3 (struct cpu_hw_events*,int,int) ;
 int stub4 (struct cpu_hw_events*,struct perf_event*) ;
 int stub5 (struct cpu_hw_events*) ;
 scalar_t__ test_bit (int,unsigned long*) ;
 TYPE_2__ x86_pmu ;

int x86_schedule_events(struct cpu_hw_events *cpuc, int n, int *assign)
{
 struct event_constraint *c;
 unsigned long used_mask[BITS_TO_LONGS(X86_PMC_IDX_MAX)];
 struct perf_event *e;
 int n0, i, wmin, wmax, unsched = 0;
 struct hw_perf_event *hwc;

 bitmap_zero(used_mask, X86_PMC_IDX_MAX);
 n0 = cpuc->n_events;
 if (cpuc->txn_flags & PERF_PMU_TXN_ADD)
  n0 -= cpuc->n_txn;

 if (x86_pmu.start_scheduling)
  x86_pmu.start_scheduling(cpuc);

 for (i = 0, wmin = X86_PMC_IDX_MAX, wmax = 0; i < n; i++) {
  c = cpuc->event_constraint[i];





  WARN_ON_ONCE((c && i >= n0) || (!c && i < n0));






  if (!c || (c->flags & PERF_X86_EVENT_DYNAMIC)) {
   c = x86_pmu.get_event_constraints(cpuc, i, cpuc->event_list[i]);
   cpuc->event_constraint[i] = c;
  }

  wmin = min(wmin, c->weight);
  wmax = max(wmax, c->weight);
 }




 for (i = 0; i < n; i++) {
  hwc = &cpuc->event_list[i]->hw;
  c = cpuc->event_constraint[i];


  if (hwc->idx == -1)
   break;


  if (!test_bit(hwc->idx, c->idxmsk))
   break;


  if (test_bit(hwc->idx, used_mask))
   break;

  __set_bit(hwc->idx, used_mask);
  if (assign)
   assign[i] = hwc->idx;
 }


 if (i != n) {
  int gpmax = x86_pmu.num_counters;
  if (is_ht_workaround_enabled() && !cpuc->is_fake &&
      READ_ONCE(cpuc->excl_cntrs->exclusive_present))
   gpmax /= 2;

  unsched = perf_assign_events(cpuc->event_constraint, n, wmin,
          wmax, gpmax, assign);
 }
 if (!unsched && assign) {
  for (i = 0; i < n; i++) {
   e = cpuc->event_list[i];
   if (x86_pmu.commit_scheduling)
    x86_pmu.commit_scheduling(cpuc, i, assign[i]);
  }
 } else {
  for (i = n0; i < n; i++) {
   e = cpuc->event_list[i];




   if (x86_pmu.put_event_constraints)
    x86_pmu.put_event_constraints(cpuc, e);

   cpuc->event_constraint[i] = ((void*)0);
  }
 }

 if (x86_pmu.stop_scheduling)
  x86_pmu.stop_scheduling(cpuc);

 return unsched ? -EINVAL : 0;
}

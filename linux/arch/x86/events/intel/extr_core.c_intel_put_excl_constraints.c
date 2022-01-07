
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int flags; size_t idx; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct intel_excl_states {int sched_started; int * state; } ;
struct intel_excl_cntrs {int lock; struct intel_excl_states* states; int * has_exclusive; } ;
struct cpu_hw_events {int excl_thread_id; int n_excl; scalar_t__ is_fake; struct intel_excl_cntrs* excl_cntrs; } ;


 int INTEL_EXCL_UNUSED ;
 int PERF_X86_EVENT_EXCL_ACCT ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int WRITE_ONCE (int ,int ) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;

__attribute__((used)) static void intel_put_excl_constraints(struct cpu_hw_events *cpuc,
  struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 struct intel_excl_cntrs *excl_cntrs = cpuc->excl_cntrs;
 int tid = cpuc->excl_thread_id;
 struct intel_excl_states *xl;




 if (cpuc->is_fake)
  return;

 if (WARN_ON_ONCE(!excl_cntrs))
  return;

 if (hwc->flags & PERF_X86_EVENT_EXCL_ACCT) {
  hwc->flags &= ~PERF_X86_EVENT_EXCL_ACCT;
  if (!--cpuc->n_excl)
   WRITE_ONCE(excl_cntrs->has_exclusive[tid], 0);
 }





 if (hwc->idx >= 0) {
  xl = &excl_cntrs->states[tid];






  if (!xl->sched_started)
   raw_spin_lock(&excl_cntrs->lock);

  xl->state[hwc->idx] = INTEL_EXCL_UNUSED;

  if (!xl->sched_started)
   raw_spin_unlock(&excl_cntrs->lock);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_excl_states {int sched_started; } ;
struct intel_excl_cntrs {int lock; struct intel_excl_states* states; } ;
struct cpu_hw_events {int excl_thread_id; scalar_t__ is_fake; struct intel_excl_cntrs* excl_cntrs; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int is_ht_workaround_enabled () ;
 int raw_spin_unlock (int *) ;

__attribute__((used)) static void
intel_stop_scheduling(struct cpu_hw_events *cpuc)
{
 struct intel_excl_cntrs *excl_cntrs = cpuc->excl_cntrs;
 struct intel_excl_states *xl;
 int tid = cpuc->excl_thread_id;




 if (cpuc->is_fake || !is_ht_workaround_enabled())
  return;



 if (WARN_ON_ONCE(!excl_cntrs))
  return;

 xl = &excl_cntrs->states[tid];

 xl->sched_started = 0;



 raw_spin_unlock(&excl_cntrs->lock);
}

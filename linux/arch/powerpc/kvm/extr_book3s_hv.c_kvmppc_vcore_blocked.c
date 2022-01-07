
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct kvmppc_vcore {scalar_t__ halt_poll_ns; TYPE_2__* runner; void* vcore_state; int lock; int wq; } ;
typedef int ktime_t ;
struct TYPE_3__ {int halt_poll_success_ns; int halt_poll_fail_ns; int halt_wait_ns; int halt_successful_wait; int halt_successful_poll; int halt_attempted_poll; } ;
struct TYPE_4__ {TYPE_1__ stat; } ;


 int DECLARE_SWAITQUEUE (int ) ;
 int TASK_INTERRUPTIBLE ;
 void* VCORE_INACTIVE ;
 void* VCORE_POLLING ;
 void* VCORE_SLEEPING ;
 int finish_swait (int *,int *) ;
 int grow_halt_poll_ns (struct kvmppc_vcore*) ;
 scalar_t__ halt_poll_ns ;
 int ktime_add_ns (int ,scalar_t__) ;
 scalar_t__ ktime_before (int ,int ) ;
 int ktime_get () ;
 scalar_t__ ktime_to_ns (int ) ;
 scalar_t__ kvmppc_vcore_check_block (struct kvmppc_vcore*) ;
 int prepare_to_swait_exclusive (int *,int *,int ) ;
 int schedule () ;
 int shrink_halt_poll_ns (struct kvmppc_vcore*) ;
 scalar_t__ single_task_running () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_kvmppc_vcore_blocked (struct kvmppc_vcore*,int) ;
 int trace_kvmppc_vcore_wakeup (int,scalar_t__) ;
 int wait ;

__attribute__((used)) static void kvmppc_vcore_blocked(struct kvmppc_vcore *vc)
{
 ktime_t cur, start_poll, start_wait;
 int do_sleep = 1;
 u64 block_ns;
 DECLARE_SWAITQUEUE(wait);


 cur = start_poll = ktime_get();
 if (vc->halt_poll_ns) {
  ktime_t stop = ktime_add_ns(start_poll, vc->halt_poll_ns);
  ++vc->runner->stat.halt_attempted_poll;

  vc->vcore_state = VCORE_POLLING;
  spin_unlock(&vc->lock);

  do {
   if (kvmppc_vcore_check_block(vc)) {
    do_sleep = 0;
    break;
   }
   cur = ktime_get();
  } while (single_task_running() && ktime_before(cur, stop));

  spin_lock(&vc->lock);
  vc->vcore_state = VCORE_INACTIVE;

  if (!do_sleep) {
   ++vc->runner->stat.halt_successful_poll;
   goto out;
  }
 }

 prepare_to_swait_exclusive(&vc->wq, &wait, TASK_INTERRUPTIBLE);

 if (kvmppc_vcore_check_block(vc)) {
  finish_swait(&vc->wq, &wait);
  do_sleep = 0;

  if (vc->halt_poll_ns)
   ++vc->runner->stat.halt_successful_poll;
  goto out;
 }

 start_wait = ktime_get();

 vc->vcore_state = VCORE_SLEEPING;
 trace_kvmppc_vcore_blocked(vc, 0);
 spin_unlock(&vc->lock);
 schedule();
 finish_swait(&vc->wq, &wait);
 spin_lock(&vc->lock);
 vc->vcore_state = VCORE_INACTIVE;
 trace_kvmppc_vcore_blocked(vc, 1);
 ++vc->runner->stat.halt_successful_wait;

 cur = ktime_get();

out:
 block_ns = ktime_to_ns(cur) - ktime_to_ns(start_poll);


 if (do_sleep) {
  vc->runner->stat.halt_wait_ns +=
   ktime_to_ns(cur) - ktime_to_ns(start_wait);

  if (vc->halt_poll_ns)
   vc->runner->stat.halt_poll_fail_ns +=
    ktime_to_ns(start_wait) -
    ktime_to_ns(start_poll);
 } else {

  if (vc->halt_poll_ns)
   vc->runner->stat.halt_poll_success_ns +=
    ktime_to_ns(cur) -
    ktime_to_ns(start_poll);
 }


 if (halt_poll_ns) {
  if (block_ns <= vc->halt_poll_ns)
   ;

  else if (vc->halt_poll_ns && block_ns > halt_poll_ns)
   shrink_halt_poll_ns(vc);

  else if (vc->halt_poll_ns < halt_poll_ns &&
    block_ns < halt_poll_ns)
   grow_halt_poll_ns(vc);
  if (vc->halt_poll_ns > halt_poll_ns)
   vc->halt_poll_ns = halt_poll_ns;
 } else
  vc->halt_poll_ns = 0;

 trace_kvmppc_vcore_wakeup(do_sleep, block_ns);
}

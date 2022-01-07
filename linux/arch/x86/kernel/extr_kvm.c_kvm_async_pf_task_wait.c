
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct kvm_task_sleep_node {size_t token; int halted; int wq; int link; int cpu; } ;
struct kvm_task_sleep_head {int lock; int list; } ;


 int CONFIG_PREEMPT_COUNT ;
 int DECLARE_SWAITQUEUE (int ) ;
 scalar_t__ IS_ENABLED (int ) ;
 int KVM_TASK_SLEEP_HASHBITS ;
 int TASK_UNINTERRUPTIBLE ;
 struct kvm_task_sleep_node* _find_apf_task (struct kvm_task_sleep_head*,size_t) ;
 struct kvm_task_sleep_head* async_pf_sleepers ;
 int current ;
 int finish_swait (int *,int *) ;
 size_t hash_32 (size_t,int ) ;
 int hlist_add_head (int *,int *) ;
 int hlist_del (int *) ;
 scalar_t__ hlist_unhashed (int *) ;
 int init_swait_queue_head (int *) ;
 scalar_t__ is_idle_task (int ) ;
 int kfree (struct kvm_task_sleep_node*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int native_safe_halt () ;
 int preempt_count () ;
 int prepare_to_swait_exclusive (int *,int *,int ) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int rcu_irq_enter () ;
 int rcu_irq_exit () ;
 scalar_t__ rcu_preempt_depth () ;
 int schedule () ;
 int smp_processor_id () ;
 int wait ;

void kvm_async_pf_task_wait(u32 token, int interrupt_kernel)
{
 u32 key = hash_32(token, KVM_TASK_SLEEP_HASHBITS);
 struct kvm_task_sleep_head *b = &async_pf_sleepers[key];
 struct kvm_task_sleep_node n, *e;
 DECLARE_SWAITQUEUE(wait);

 rcu_irq_enter();

 raw_spin_lock(&b->lock);
 e = _find_apf_task(b, token);
 if (e) {

  hlist_del(&e->link);
  kfree(e);
  raw_spin_unlock(&b->lock);

  rcu_irq_exit();
  return;
 }

 n.token = token;
 n.cpu = smp_processor_id();
 n.halted = is_idle_task(current) ||
     (IS_ENABLED(CONFIG_PREEMPT_COUNT)
      ? preempt_count() > 1 || rcu_preempt_depth()
      : interrupt_kernel);
 init_swait_queue_head(&n.wq);
 hlist_add_head(&n.link, &b->list);
 raw_spin_unlock(&b->lock);

 for (;;) {
  if (!n.halted)
   prepare_to_swait_exclusive(&n.wq, &wait, TASK_UNINTERRUPTIBLE);
  if (hlist_unhashed(&n.link))
   break;

  rcu_irq_exit();

  if (!n.halted) {
   local_irq_enable();
   schedule();
   local_irq_disable();
  } else {



   native_safe_halt();
   local_irq_disable();
  }

  rcu_irq_enter();
 }
 if (!n.halted)
  finish_swait(&n.wq, &wait);

 rcu_irq_exit();
 return;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct kvm_task_sleep_node {size_t token; int link; int wq; int cpu; } ;
struct kvm_task_sleep_head {int lock; int list; } ;


 int GFP_ATOMIC ;
 int KVM_TASK_SLEEP_HASHBITS ;
 struct kvm_task_sleep_node* _find_apf_task (struct kvm_task_sleep_head*,size_t) ;
 int apf_task_wake_all () ;
 int apf_task_wake_one (struct kvm_task_sleep_node*) ;
 struct kvm_task_sleep_head* async_pf_sleepers ;
 int cpu_relax () ;
 size_t hash_32 (size_t,int ) ;
 int hlist_add_head (int *,int *) ;
 int init_swait_queue_head (int *) ;
 struct kvm_task_sleep_node* kzalloc (int,int ) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int smp_processor_id () ;

void kvm_async_pf_task_wake(u32 token)
{
 u32 key = hash_32(token, KVM_TASK_SLEEP_HASHBITS);
 struct kvm_task_sleep_head *b = &async_pf_sleepers[key];
 struct kvm_task_sleep_node *n;

 if (token == ~0) {
  apf_task_wake_all();
  return;
 }

again:
 raw_spin_lock(&b->lock);
 n = _find_apf_task(b, token);
 if (!n) {




  n = kzalloc(sizeof(*n), GFP_ATOMIC);
  if (!n) {




   raw_spin_unlock(&b->lock);
   cpu_relax();
   goto again;
  }
  n->token = token;
  n->cpu = smp_processor_id();
  init_swait_queue_head(&n->wq);
  hlist_add_head(&n->link, &b->list);
 } else
  apf_task_wake_one(n);
 raw_spin_unlock(&b->lock);
 return;
}

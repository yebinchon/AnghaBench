
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct preempted_vcore_list {int lock; int list; } ;
struct kvmppc_vcore {scalar_t__ num_threads; int preempt_list; int kvm; int pcpu; int vcore_state; } ;


 int VCORE_PREEMPT ;
 int kvmppc_core_start_stolen (struct kvmppc_vcore*) ;
 int list_add_tail (int *,int *) ;
 int preempted_vcores ;
 int smp_processor_id () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct preempted_vcore_list* this_cpu_ptr (int *) ;
 scalar_t__ threads_per_vcore (int ) ;

__attribute__((used)) static void kvmppc_vcore_preempt(struct kvmppc_vcore *vc)
{
 struct preempted_vcore_list *lp = this_cpu_ptr(&preempted_vcores);

 vc->vcore_state = VCORE_PREEMPT;
 vc->pcpu = smp_processor_id();
 if (vc->num_threads < threads_per_vcore(vc->kvm)) {
  spin_lock(&lp->lock);
  list_add_tail(&vc->preempt_list, &lp->list);
  spin_unlock(&lp->lock);
 }


 kvmppc_core_start_stolen(vc);
}

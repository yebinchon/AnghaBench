
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_page_track_notifier_node {int node; } ;
struct kvm_page_track_notifier_head {int track_srcu; } ;
struct TYPE_2__ {struct kvm_page_track_notifier_head track_notifier_head; } ;
struct kvm {int mmu_lock; TYPE_1__ arch; } ;


 int hlist_del_rcu (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_srcu (int *) ;

void
kvm_page_track_unregister_notifier(struct kvm *kvm,
       struct kvm_page_track_notifier_node *n)
{
 struct kvm_page_track_notifier_head *head;

 head = &kvm->arch.track_notifier_head;

 spin_lock(&kvm->mmu_lock);
 hlist_del_rcu(&n->node);
 spin_unlock(&kvm->mmu_lock);
 synchronize_srcu(&head->track_srcu);
}

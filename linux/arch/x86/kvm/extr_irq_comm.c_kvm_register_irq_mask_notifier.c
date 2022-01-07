
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_irq_mask_notifier {int irq; int link; } ;
struct TYPE_2__ {int mask_notifier_list; } ;
struct kvm {int irq_lock; TYPE_1__ arch; } ;


 int hlist_add_head_rcu (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void kvm_register_irq_mask_notifier(struct kvm *kvm, int irq,
        struct kvm_irq_mask_notifier *kimn)
{
 mutex_lock(&kvm->irq_lock);
 kimn->irq = irq;
 hlist_add_head_rcu(&kimn->link, &kvm->arch.mask_notifier_list);
 mutex_unlock(&kvm->irq_lock);
}

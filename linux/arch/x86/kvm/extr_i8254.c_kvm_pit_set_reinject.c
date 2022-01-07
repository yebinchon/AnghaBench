
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_kpit_state {int reinject; int irq_ack_notifier; } ;
struct kvm_pit {int mask_notifier; struct kvm* kvm; struct kvm_kpit_state pit_state; } ;
struct kvm {int dummy; } ;


 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int kvm_pit_reset_reinject (struct kvm_pit*) ;
 int kvm_register_irq_ack_notifier (struct kvm*,int *) ;
 int kvm_register_irq_mask_notifier (struct kvm*,int ,int *) ;
 int kvm_unregister_irq_ack_notifier (struct kvm*,int *) ;
 int kvm_unregister_irq_mask_notifier (struct kvm*,int ,int *) ;

void kvm_pit_set_reinject(struct kvm_pit *pit, bool reinject)
{
 struct kvm_kpit_state *ps = &pit->pit_state;
 struct kvm *kvm = pit->kvm;

 if (atomic_read(&ps->reinject) == reinject)
  return;

 if (reinject) {

  kvm_pit_reset_reinject(pit);
  kvm_register_irq_ack_notifier(kvm, &ps->irq_ack_notifier);
  kvm_register_irq_mask_notifier(kvm, 0, &pit->mask_notifier);
 } else {
  kvm_unregister_irq_ack_notifier(kvm, &ps->irq_ack_notifier);
  kvm_unregister_irq_mask_notifier(kvm, 0, &pit->mask_notifier);
 }

 atomic_set(&ps->reinject, reinject);
}

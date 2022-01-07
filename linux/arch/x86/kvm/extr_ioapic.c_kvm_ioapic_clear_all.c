
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_ioapic {int lock; int * irq_states; } ;


 int KVM_IOAPIC_NUM_PINS ;
 int __clear_bit (int,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void kvm_ioapic_clear_all(struct kvm_ioapic *ioapic, int irq_source_id)
{
 int i;

 spin_lock(&ioapic->lock);
 for (i = 0; i < KVM_IOAPIC_NUM_PINS; i++)
  __clear_bit(irq_source_id, &ioapic->irq_states[i]);
 spin_unlock(&ioapic->lock);
}

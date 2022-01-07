
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_ioapic {int lock; int * irq_states; } ;


 int BUG_ON (int) ;
 int IOAPIC_NUM_PINS ;
 int __kvm_irq_line_state (int *,int,int) ;
 int ioapic_set_irq (struct kvm_ioapic*,int,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int kvm_ioapic_set_irq(struct kvm_ioapic *ioapic, int irq, int irq_source_id,
         int level, bool line_status)
{
 int ret, irq_level;

 BUG_ON(irq < 0 || irq >= IOAPIC_NUM_PINS);

 spin_lock(&ioapic->lock);
 irq_level = __kvm_irq_line_state(&ioapic->irq_states[irq],
      irq_source_id, level);
 ret = ioapic_set_irq(ioapic, irq, irq_level, line_status);

 spin_unlock(&ioapic->lock);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 unsigned int OCTEON_IRQ_MSI_BIT0 ;
 int* msi_free_irq_bitmask ;
 int msi_free_irq_bitmask_lock ;
 unsigned int msi_irq_size ;
 unsigned long long* msi_multiple_irq_bitmask ;
 int panic (char*,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void arch_teardown_msi_irq(unsigned int irq)
{
 int number_irqs;
 u64 bitmask;
 int index = 0;
 int irq0;

 if ((irq < OCTEON_IRQ_MSI_BIT0)
  || (irq > msi_irq_size + OCTEON_IRQ_MSI_BIT0))
  panic("arch_teardown_msi_irq: Attempted to teardown illegal "
        "MSI interrupt (%d)", irq);

 irq -= OCTEON_IRQ_MSI_BIT0;
 index = irq / 64;
 irq0 = irq % 64;






 number_irqs = 0;
 while ((irq0 + number_irqs < 64) &&
        (msi_multiple_irq_bitmask[index]
  & (1ull << (irq0 + number_irqs))))
  number_irqs++;
 number_irqs++;

 bitmask = (1 << number_irqs) - 1;

 bitmask <<= irq0;
 if ((msi_free_irq_bitmask[index] & bitmask) != bitmask)
  panic("arch_teardown_msi_irq: Attempted to teardown MSI "
        "interrupt (%d) not in use", irq);


 spin_lock(&msi_free_irq_bitmask_lock);
 msi_free_irq_bitmask[index] &= ~bitmask;
 msi_multiple_irq_bitmask[index] &= ~bitmask;
 spin_unlock(&msi_free_irq_bitmask_lock);
}

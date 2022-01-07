
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pq2ads_pci_pic {TYPE_1__* regs; } ;
struct irq_data {int dummy; } ;
struct TYPE_2__ {int mask; } ;


 int NUM_IRQS ;
 struct pq2ads_pci_pic* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;
 int mb () ;
 int pci_pic_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int setbits32 (int *,int) ;

__attribute__((used)) static void pq2ads_pci_mask_irq(struct irq_data *d)
{
 struct pq2ads_pci_pic *priv = irq_data_get_irq_chip_data(d);
 int irq = NUM_IRQS - irqd_to_hwirq(d) - 1;

 if (irq != -1) {
  unsigned long flags;
  raw_spin_lock_irqsave(&pci_pic_lock, flags);

  setbits32(&priv->regs->mask, 1 << irq);
  mb();

  raw_spin_unlock_irqrestore(&pci_pic_lock, flags);
 }
}

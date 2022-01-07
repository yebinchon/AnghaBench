
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uic {int lock; scalar_t__ dcrbase; } ;
struct irq_data {int dummy; } ;


 scalar_t__ UIC_ER ;
 scalar_t__ UIC_SR ;
 struct uic* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_is_level_type (struct irq_data*) ;
 unsigned int irqd_to_hwirq (struct irq_data*) ;
 int mfdcr (scalar_t__) ;
 int mtdcr (scalar_t__,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void uic_mask_ack_irq(struct irq_data *d)
{
 struct uic *uic = irq_data_get_irq_chip_data(d);
 unsigned int src = irqd_to_hwirq(d);
 unsigned long flags;
 u32 er, sr;

 sr = 1 << (31-src);
 raw_spin_lock_irqsave(&uic->lock, flags);
 er = mfdcr(uic->dcrbase + UIC_ER);
 er &= ~sr;
 mtdcr(uic->dcrbase + UIC_ER, er);
 if (!irqd_is_level_type(d))
  mtdcr(uic->dcrbase + UIC_SR, sr);
 raw_spin_unlock_irqrestore(&uic->lock, flags);
}

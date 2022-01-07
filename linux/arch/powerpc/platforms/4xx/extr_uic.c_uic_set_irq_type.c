
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uic {int lock; scalar_t__ dcrbase; } ;
struct irq_data {int dummy; } ;


 int EINVAL ;





 unsigned int IRQ_TYPE_SENSE_MASK ;
 scalar_t__ UIC_PR ;
 scalar_t__ UIC_SR ;
 scalar_t__ UIC_TR ;
 struct uic* irq_data_get_irq_chip_data (struct irq_data*) ;
 unsigned int irqd_to_hwirq (struct irq_data*) ;
 int mfdcr (scalar_t__) ;
 int mtdcr (scalar_t__,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int uic_mask_irq (struct irq_data*) ;

__attribute__((used)) static int uic_set_irq_type(struct irq_data *d, unsigned int flow_type)
{
 struct uic *uic = irq_data_get_irq_chip_data(d);
 unsigned int src = irqd_to_hwirq(d);
 unsigned long flags;
 int trigger, polarity;
 u32 tr, pr, mask;

 switch (flow_type & IRQ_TYPE_SENSE_MASK) {
 case 128:
  uic_mask_irq(d);
  return 0;

 case 131:
  trigger = 1; polarity = 1;
  break;
 case 132:
  trigger = 1; polarity = 0;
  break;
 case 130:
  trigger = 0; polarity = 1;
  break;
 case 129:
  trigger = 0; polarity = 0;
  break;
 default:
  return -EINVAL;
 }

 mask = ~(1 << (31 - src));

 raw_spin_lock_irqsave(&uic->lock, flags);
 tr = mfdcr(uic->dcrbase + UIC_TR);
 pr = mfdcr(uic->dcrbase + UIC_PR);
 tr = (tr & mask) | (trigger << (31-src));
 pr = (pr & mask) | (polarity << (31-src));

 mtdcr(uic->dcrbase + UIC_PR, pr);
 mtdcr(uic->dcrbase + UIC_TR, tr);
 mtdcr(uic->dcrbase + UIC_SR, ~mask);

 raw_spin_unlock_irqrestore(&uic->lock, flags);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uic {int irqhost; scalar_t__ dcrbase; } ;
struct irq_desc {int lock; } ;
struct irq_data {int dummy; } ;
struct irq_chip {int (* irq_unmask ) (struct irq_data*) ;int (* irq_ack ) (struct irq_data*) ;int (* irq_mask_ack ) (struct irq_data*) ;int (* irq_mask ) (struct irq_data*) ;} ;


 scalar_t__ UIC_MSR ;
 int ffs (int ) ;
 int generic_handle_irq (int) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct uic* irq_desc_get_handler_data (struct irq_desc*) ;
 struct irq_data* irq_desc_get_irq_data (struct irq_desc*) ;
 int irq_linear_revmap (int ,int) ;
 int irqd_irq_disabled (struct irq_data*) ;
 scalar_t__ irqd_is_level_type (struct irq_data*) ;
 int mfdcr (scalar_t__) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int stub1 (struct irq_data*) ;
 int stub2 (struct irq_data*) ;
 int stub3 (struct irq_data*) ;
 int stub4 (struct irq_data*) ;

__attribute__((used)) static void uic_irq_cascade(struct irq_desc *desc)
{
 struct irq_chip *chip = irq_desc_get_chip(desc);
 struct irq_data *idata = irq_desc_get_irq_data(desc);
 struct uic *uic = irq_desc_get_handler_data(desc);
 u32 msr;
 int src;
 int subvirq;

 raw_spin_lock(&desc->lock);
 if (irqd_is_level_type(idata))
  chip->irq_mask(idata);
 else
  chip->irq_mask_ack(idata);
 raw_spin_unlock(&desc->lock);

 msr = mfdcr(uic->dcrbase + UIC_MSR);
 if (!msr)
  goto uic_irq_ret;

 src = 32 - ffs(msr);

 subvirq = irq_linear_revmap(uic->irqhost, src);
 generic_handle_irq(subvirq);

uic_irq_ret:
 raw_spin_lock(&desc->lock);
 if (irqd_is_level_type(idata))
  chip->irq_ack(idata);
 if (!irqd_irq_disabled(idata) && chip->irq_unmask)
  chip->irq_unmask(idata);
 raw_spin_unlock(&desc->lock);
}

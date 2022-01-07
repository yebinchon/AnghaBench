
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxc_extra_irq {int (* set_irq_fiq ) (int ,unsigned int) ;} ;
struct irq_data {int dummy; } ;
struct irq_chip_generic {struct mxc_extra_irq* private; } ;


 int ENOSYS ;
 struct irq_chip_generic* irq_get_chip_data (unsigned int) ;
 struct irq_data* irq_get_irq_data (unsigned int) ;
 int irqd_to_hwirq (struct irq_data*) ;
 int stub1 (int ,unsigned int) ;

int mxc_set_irq_fiq(unsigned int irq, unsigned int type)
{
 struct irq_chip_generic *gc;
 struct mxc_extra_irq *exirq;
 int ret;

 ret = -ENOSYS;

 gc = irq_get_chip_data(irq);
 if (gc && gc->private) {
  exirq = gc->private;
  if (exirq->set_irq_fiq) {
   struct irq_data *d = irq_get_irq_data(irq);
   ret = exirq->set_irq_fiq(irqd_to_hwirq(d), type);
  }
 }

 return ret;
}

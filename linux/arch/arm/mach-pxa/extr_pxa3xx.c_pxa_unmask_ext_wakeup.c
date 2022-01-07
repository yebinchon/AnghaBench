
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {scalar_t__ irq; } ;


 scalar_t__ IRQ_WAKEUP0 ;
 int PECR ;
 int PECR_IE (scalar_t__) ;
 int pxa_unmask_irq (struct irq_data*) ;

__attribute__((used)) static void pxa_unmask_ext_wakeup(struct irq_data *d)
{
 pxa_unmask_irq(d);
 PECR |= PECR_IE(d->irq - IRQ_WAKEUP0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {size_t irq; } ;


 scalar_t__* mcf_irq2imr ;
 int mcf_setimr (scalar_t__) ;

__attribute__((used)) static void intc_irq_mask(struct irq_data *d)
{
 if (mcf_irq2imr[d->irq])
  mcf_setimr(mcf_irq2imr[d->irq]);
}

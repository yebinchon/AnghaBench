
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int irq; } ;


 scalar_t__ MCFINTC0_SIMR ;
 scalar_t__ MCFINTC1_SIMR ;
 scalar_t__ MCFINTC2_SIMR ;
 unsigned int MCFINT_VECBASE ;
 int __raw_writeb (unsigned int,scalar_t__) ;

__attribute__((used)) static void intc_irq_mask(struct irq_data *d)
{
 unsigned int irq = d->irq - MCFINT_VECBASE;

 if (MCFINTC2_SIMR && (irq > 128))
  __raw_writeb(irq - 128, MCFINTC2_SIMR);
 else if (MCFINTC1_SIMR && (irq > 64))
  __raw_writeb(irq - 64, MCFINTC1_SIMR);
 else
  __raw_writeb(irq, MCFINTC0_SIMR);
}

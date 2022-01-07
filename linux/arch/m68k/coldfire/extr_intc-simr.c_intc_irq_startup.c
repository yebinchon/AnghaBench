
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct irq_data {unsigned int irq; } ;


 unsigned int EINT1 ;
 unsigned int EINT7 ;
 scalar_t__ MCFEPORT_EPDDR ;
 scalar_t__ MCFEPORT_EPIER ;
 scalar_t__ MCFINTC0_ICR0 ;
 scalar_t__ MCFINTC1_ICR0 ;
 scalar_t__ MCFINTC2_ICR0 ;
 scalar_t__ MCFINT_VECBASE ;
 int __raw_readb (scalar_t__) ;
 int __raw_writeb (int,scalar_t__) ;
 int intc_irq_unmask (struct irq_data*) ;
 unsigned int irq2ebit (unsigned int) ;

__attribute__((used)) static unsigned int intc_irq_startup(struct irq_data *d)
{
 unsigned int irq = d->irq;

 if ((irq >= EINT1) && (irq <= EINT7)) {
  unsigned int ebit = irq2ebit(irq);
  u8 v;
  v = __raw_readb(MCFEPORT_EPIER);
  __raw_writeb(v | (0x1 << ebit), MCFEPORT_EPIER);
 }

 irq -= MCFINT_VECBASE;
 if (MCFINTC2_ICR0 && (irq > 128))
  __raw_writeb(5, MCFINTC2_ICR0 + irq - 128);
 else if (MCFINTC1_ICR0 && (irq > 64))
  __raw_writeb(5, MCFINTC1_ICR0 + irq - 64);
 else
  __raw_writeb(5, MCFINTC0_ICR0 + irq);

 intc_irq_unmask(d);
 return 0;
}

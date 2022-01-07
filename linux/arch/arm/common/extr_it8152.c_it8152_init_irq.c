
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_NOPROBE ;
 int IRQ_NOREQUEST ;
 int IT8152_INTC_LDCNIMR ;
 int IT8152_INTC_LDCNIRR ;
 int IT8152_INTC_LPCNIMR ;
 int IT8152_INTC_LPCNIRR ;
 int IT8152_INTC_PDCNIMR ;
 int IT8152_INTC_PDCNIRR ;
 int IT8152_IRQ (int ) ;
 int IT8152_LAST_IRQ ;
 int __raw_writel (int,int ) ;
 int handle_level_irq ;
 int irq_clear_status_flags (int,int) ;
 int irq_set_chip_and_handler (int,int *,int ) ;
 int it8152_irq_chip ;

void it8152_init_irq(void)
{
 int irq;

 __raw_writel((0xffff), IT8152_INTC_PDCNIMR);
 __raw_writel((0), IT8152_INTC_PDCNIRR);
 __raw_writel((0xffff), IT8152_INTC_LPCNIMR);
 __raw_writel((0), IT8152_INTC_LPCNIRR);
 __raw_writel((0xffff), IT8152_INTC_LDCNIMR);
 __raw_writel((0), IT8152_INTC_LDCNIRR);

 for (irq = IT8152_IRQ(0); irq <= IT8152_LAST_IRQ; irq++) {
  irq_set_chip_and_handler(irq, &it8152_irq_chip,
      handle_level_irq);
  irq_clear_status_flags(irq, IRQ_NOREQUEST | IRQ_NOPROBE);
 }
}

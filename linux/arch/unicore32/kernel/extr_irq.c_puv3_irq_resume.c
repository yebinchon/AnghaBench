
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puv3_irq_state {int iccr; int iclr; int icmr; scalar_t__ saved; } ;


 int GPIO_GFER ;
 int GPIO_GRER ;
 int GPIO_IRQ_falling_edge ;
 int GPIO_IRQ_mask ;
 int GPIO_IRQ_rising_edge ;
 int INTC_ICCR ;
 int INTC_ICLR ;
 int INTC_ICMR ;
 struct puv3_irq_state puv3_irq_state ;
 int writel (int,int ) ;

__attribute__((used)) static void puv3_irq_resume(void)
{
 struct puv3_irq_state *st = &puv3_irq_state;

 if (st->saved) {
  writel(st->iccr, INTC_ICCR);
  writel(st->iclr, INTC_ICLR);

  writel(GPIO_IRQ_rising_edge & GPIO_IRQ_mask, GPIO_GRER);
  writel(GPIO_IRQ_falling_edge & GPIO_IRQ_mask, GPIO_GFER);

  writel(st->icmr, INTC_ICMR);
 }
}

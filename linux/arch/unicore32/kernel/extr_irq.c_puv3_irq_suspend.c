
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puv3_irq_state {int saved; int icmr; int iclr; int iccr; } ;


 int GPIO_GEDR ;
 int GPIO_GFER ;
 int GPIO_GRER ;
 int GPIO_IRQ_falling_edge ;
 int GPIO_IRQ_rising_edge ;
 int INTC_ICCR ;
 int INTC_ICLR ;
 int INTC_ICMR ;
 int PM_PWER ;
 struct puv3_irq_state puv3_irq_state ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static int puv3_irq_suspend(void)
{
 struct puv3_irq_state *st = &puv3_irq_state;

 st->saved = 1;
 st->icmr = readl(INTC_ICMR);
 st->iclr = readl(INTC_ICLR);
 st->iccr = readl(INTC_ICCR);




 writel(readl(INTC_ICMR) & ~(0x1ff), INTC_ICMR);




 writel(readl(PM_PWER) & GPIO_IRQ_rising_edge, GPIO_GRER);
 writel(readl(PM_PWER) & GPIO_IRQ_falling_edge, GPIO_GFER);




 writel(readl(GPIO_GEDR), GPIO_GEDR);

 return 0;
}

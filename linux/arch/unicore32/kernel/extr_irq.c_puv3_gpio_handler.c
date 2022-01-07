
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 int GPIO_GEDR ;
 unsigned int IRQ_GPIO0 ;
 int generic_handle_irq (unsigned int) ;
 unsigned int readl (int ) ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static void puv3_gpio_handler(struct irq_desc *desc)
{
 unsigned int mask, irq;

 mask = readl(GPIO_GEDR);
 do {




  writel(mask, GPIO_GEDR);

  irq = IRQ_GPIO0;
  do {
   if (mask & 1)
    generic_handle_irq(irq);
   mask >>= 1;
   irq++;
  } while (mask);
  mask = readl(GPIO_GEDR);
 } while (mask);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int irq; } ;


 int IRQ_TYPE_EDGE_FALLING ;
 int IRQ_TYPE_EDGE_RISING ;
 int MCFSIM2_GPIOINTENABLE ;
 int MCF_IRQ_GPIO0 ;
 int irqd_get_trigger_type (struct irq_data*) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void intc2_irq_gpio_mask(struct irq_data *d)
{
 u32 imr = readl(MCFSIM2_GPIOINTENABLE);
 u32 type = irqd_get_trigger_type(d);
 int irq = d->irq - MCF_IRQ_GPIO0;

 if (type & IRQ_TYPE_EDGE_RISING)
  imr &= ~(0x001 << irq);
 if (type & IRQ_TYPE_EDGE_FALLING)
  imr &= ~(0x100 << irq);
 writel(imr, MCFSIM2_GPIOINTENABLE);
}

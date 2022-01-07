
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int irq; } ;


 int MCFSIM2_GPIOINTENABLE ;
 int MCF_IRQ_GPIO0 ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void intc2_irq_gpio_mask(struct irq_data *d)
{
 u32 imr;
 imr = readl(MCFSIM2_GPIOINTENABLE);
 imr &= ~(0x1 << (d->irq - MCF_IRQ_GPIO0));
 writel(imr, MCFSIM2_GPIOINTENABLE);
}

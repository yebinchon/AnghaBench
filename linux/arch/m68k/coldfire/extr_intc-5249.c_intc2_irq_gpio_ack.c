
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int MCFSIM2_GPIOINTCLEAR ;
 int MCF_IRQ_GPIO0 ;
 int writel (int,int ) ;

__attribute__((used)) static void intc2_irq_gpio_ack(struct irq_data *d)
{
 writel(0x1 << (d->irq - MCF_IRQ_GPIO0), MCFSIM2_GPIOINTCLEAR);
}

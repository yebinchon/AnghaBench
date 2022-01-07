
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {unsigned int irq; } ;


 int EMMA2RH_GPIO_INT_MASK ;
 unsigned int EMMA2RH_GPIO_IRQ_BASE ;
 int emma2rh_in32 (int ) ;
 int emma2rh_out32 (int ,int) ;

__attribute__((used)) static void emma2rh_gpio_irq_disable(struct irq_data *d)
{
 unsigned int irq = d->irq - EMMA2RH_GPIO_IRQ_BASE;
 u32 reg;

 reg = emma2rh_in32(EMMA2RH_GPIO_INT_MASK);
 reg &= ~(1 << irq);
 emma2rh_out32(EMMA2RH_GPIO_INT_MASK, reg);
}

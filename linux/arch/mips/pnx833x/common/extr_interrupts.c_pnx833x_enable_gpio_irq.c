
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int PNX833X_GPIO_IRQ_BASE ;
 int pnx833x_gpio_enable_irq (int) ;
 int pnx833x_gpio_pnx833x_irq_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pnx833x_enable_gpio_irq(struct irq_data *d)
{
 int pin = d->irq - PNX833X_GPIO_IRQ_BASE;
 unsigned long flags;
 raw_spin_lock_irqsave(&pnx833x_gpio_pnx833x_irq_lock, flags);
 pnx833x_gpio_enable_irq(pin);
 raw_spin_unlock_irqrestore(&pnx833x_gpio_pnx833x_irq_lock, flags);
}

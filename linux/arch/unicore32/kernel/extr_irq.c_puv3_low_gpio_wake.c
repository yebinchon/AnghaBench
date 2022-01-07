
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int PM_PWER ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static int puv3_low_gpio_wake(struct irq_data *d, unsigned int on)
{
 if (on)
  writel(readl(PM_PWER) | (1 << d->irq), PM_PWER);
 else
  writel(readl(PM_PWER) & ~(1 << d->irq), PM_PWER);
 return 0;
}

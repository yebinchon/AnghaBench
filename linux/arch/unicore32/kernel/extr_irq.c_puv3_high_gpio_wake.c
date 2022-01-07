
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int PM_PWER ;
 int PM_PWER_GPIOHIGH ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static int puv3_high_gpio_wake(struct irq_data *d, unsigned int on)
{
 if (on)
  writel(readl(PM_PWER) | PM_PWER_GPIOHIGH, PM_PWER);
 else
  writel(readl(PM_PWER) & ~PM_PWER_GPIOHIGH, PM_PWER);
 return 0;
}

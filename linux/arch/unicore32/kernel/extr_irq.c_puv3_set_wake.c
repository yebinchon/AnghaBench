
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {scalar_t__ irq; } ;


 int EINVAL ;
 scalar_t__ IRQ_RTCAlarm ;
 int PM_PWER ;
 int PM_PWER_RTC ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static int puv3_set_wake(struct irq_data *d, unsigned int on)
{
 if (d->irq == IRQ_RTCAlarm) {
  if (on)
   writel(readl(PM_PWER) | PM_PWER_RTC, PM_PWER);
  else
   writel(readl(PM_PWER) & ~PM_PWER_RTC, PM_PWER);
  return 0;
 }
 return -EINVAL;
}

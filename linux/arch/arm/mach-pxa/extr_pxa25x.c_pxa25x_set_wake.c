
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct irq_data {scalar_t__ irq; } ;


 int EINVAL ;
 scalar_t__ IRQ_RTCAlrm ;
 int PWER ;
 int PWER_RTC ;
 int gpio_set_wake (int,unsigned int) ;
 int pxa_irq_to_gpio (scalar_t__) ;

__attribute__((used)) static int pxa25x_set_wake(struct irq_data *d, unsigned int on)
{
 int gpio = pxa_irq_to_gpio(d->irq);
 uint32_t mask = 0;

 if (gpio >= 0 && gpio < 85)
  return gpio_set_wake(gpio, on);

 if (d->irq == IRQ_RTCAlrm) {
  mask = PWER_RTC;
  goto set_pwer;
 }

 return -EINVAL;

set_pwer:
 if (on)
  PWER |= mask;
 else
  PWER &=~mask;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADM5120_IRQ_GPIO2 ;
 int ADM5120_IRQ_GPIO4 ;
 int EINVAL ;

int adm5120_gpio_to_irq(unsigned gpio)
{
 int ret;

 switch (gpio) {
 case 129:
  ret = ADM5120_IRQ_GPIO2;
  break;
 case 128:
  ret = ADM5120_IRQ_GPIO4;
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADM5120_GPIO_PIN2 ;
 int ADM5120_GPIO_PIN4 ;


 int EINVAL ;

int adm5120_irq_to_gpio(unsigned irq)
{
 int ret;

 switch (irq) {
 case 129:
  ret = ADM5120_GPIO_PIN2;
  break;
 case 128:
  ret = ADM5120_GPIO_PIN4;
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}

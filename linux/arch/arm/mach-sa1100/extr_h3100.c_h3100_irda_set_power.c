
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int H3100_GPIO_IR_ON ;
 int gpio_set_value (int ,unsigned int) ;

__attribute__((used)) static int h3100_irda_set_power(struct device *dev, unsigned int state)
{
 gpio_set_value(H3100_GPIO_IR_ON, state);
 return 0;
}

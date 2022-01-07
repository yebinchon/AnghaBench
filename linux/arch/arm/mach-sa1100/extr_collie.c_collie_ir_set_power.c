
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int COLLIE_GPIO_IR_ON ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static int collie_ir_set_power(struct device *dev, unsigned int state)
{
 gpio_set_value(COLLIE_GPIO_IR_ON, !state);
 return 0;
}

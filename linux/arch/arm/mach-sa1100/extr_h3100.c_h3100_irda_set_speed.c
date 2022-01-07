
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int H3100_GPIO_IR_FSEL ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static void h3100_irda_set_speed(struct device *dev, unsigned int speed)
{
 gpio_set_value(H3100_GPIO_IR_FSEL, !(speed < 4000000));
}

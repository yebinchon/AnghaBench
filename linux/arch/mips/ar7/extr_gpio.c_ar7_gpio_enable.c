
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ar7_gpio_enable_ar7 (unsigned int) ;
 int ar7_gpio_enable_titan (unsigned int) ;
 scalar_t__ ar7_is_titan () ;

int ar7_gpio_enable(unsigned gpio)
{
 return ar7_is_titan() ? ar7_gpio_enable_titan(gpio) :
    ar7_gpio_enable_ar7(gpio);
}

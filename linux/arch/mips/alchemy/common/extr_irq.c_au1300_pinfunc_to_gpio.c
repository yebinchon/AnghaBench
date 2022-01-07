
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum au1300_multifunc_pins { ____Placeholder_au1300_multifunc_pins } au1300_multifunc_pins ;


 int AU1300_GPIO_BASE ;
 int au1300_gpio_direction_input (int) ;

void au1300_pinfunc_to_gpio(enum au1300_multifunc_pins gpio)
{
 au1300_gpio_direction_input(gpio + AU1300_GPIO_BASE);
}

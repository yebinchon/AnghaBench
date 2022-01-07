
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADM5120_GPIO_PIN4 ;
 int gpio_set_value (int ,int ) ;

__attribute__((used)) static void np28g_reset(void)
{
 gpio_set_value(ADM5120_GPIO_PIN4, 0);
}

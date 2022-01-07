
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CORGI_GPIO_ADC_TEMP_ON ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static void corgi_measure_temp(int on)
{
 gpio_set_value(CORGI_GPIO_ADC_TEMP_ON, on);
}

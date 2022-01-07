
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPITZ_GPIO_ADC_TEMP_ON ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static void spitz_measure_temp(int on)
{
 gpio_set_value(SPITZ_GPIO_ADC_TEMP_ON, on);
}

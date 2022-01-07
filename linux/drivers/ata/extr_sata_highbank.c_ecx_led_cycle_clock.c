
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecx_plat_data {int * sgpio_gpiod; } ;


 size_t SCLOCK ;
 int gpiod_set_value (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void ecx_led_cycle_clock(struct ecx_plat_data *pdata)
{
 gpiod_set_value(pdata->sgpio_gpiod[SCLOCK], 1);
 udelay(50);
 gpiod_set_value(pdata->sgpio_gpiod[SCLOCK], 0);
 udelay(50);
}

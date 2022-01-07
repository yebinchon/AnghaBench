
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H1940_LATCH_SD_POWER ;



 int gpio_set_value (int ,int) ;

__attribute__((used)) static void h1940_set_mmc_power(unsigned char power_mode, unsigned short vdd)
{
 switch (power_mode) {
 case 130:
  gpio_set_value(H1940_LATCH_SD_POWER, 0);
  break;
 case 128:
 case 129:
  gpio_set_value(H1940_LATCH_SD_POWER, 1);
  break;
 default:
  break;
 }
}

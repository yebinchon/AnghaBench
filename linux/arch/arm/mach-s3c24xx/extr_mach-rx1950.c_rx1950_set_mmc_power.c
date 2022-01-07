
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C2410_GPJ (int) ;
 int gpio_direction_output (int ,int) ;

__attribute__((used)) static void rx1950_set_mmc_power(unsigned char power_mode, unsigned short vdd)
{
 switch (power_mode) {
 case 130:
  gpio_direction_output(S3C2410_GPJ(1), 0);
  break;
 case 128:
 case 129:
  gpio_direction_output(S3C2410_GPJ(1), 1);
  break;
 default:
  break;
 }
}

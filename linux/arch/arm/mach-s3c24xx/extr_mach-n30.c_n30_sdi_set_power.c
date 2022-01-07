
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C2410_GPG (int) ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static void n30_sdi_set_power(unsigned char power_mode, unsigned short vdd)
{
 switch (power_mode) {
 case 129:
 case 128:
  gpio_set_value(S3C2410_GPG(4), 1);
  break;
 case 130:
 default:
  gpio_set_value(S3C2410_GPG(4), 0);
  break;
 }
}

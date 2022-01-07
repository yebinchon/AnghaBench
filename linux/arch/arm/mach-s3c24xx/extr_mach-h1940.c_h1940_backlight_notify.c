
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int H1940_LATCH_MAX1698_nSHUTDOWN ;
 int S3C2410_GPB (int ) ;
 int S3C2410_GPB0_TOUT0 ;
 int S3C_GPIO_PULL_NONE ;
 int gpio_direction_output (int ,int) ;
 int gpio_set_value (int ,int) ;
 int s3c_gpio_cfgpin (int ,int ) ;
 int s3c_gpio_setpull (int ,int ) ;

__attribute__((used)) static int h1940_backlight_notify(struct device *dev, int brightness)
{
 if (!brightness) {
  gpio_direction_output(S3C2410_GPB(0), 1);
  gpio_set_value(H1940_LATCH_MAX1698_nSHUTDOWN, 0);
 } else {
  gpio_direction_output(S3C2410_GPB(0), 0);
  s3c_gpio_setpull(S3C2410_GPB(0), S3C_GPIO_PULL_NONE);
  s3c_gpio_cfgpin(S3C2410_GPB(0), S3C2410_GPB0_TOUT0);
  gpio_set_value(H1940_LATCH_MAX1698_nSHUTDOWN, 1);
 }
 return brightness;
}

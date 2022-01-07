
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int S3C2410_GPC (int) ;
 unsigned int S3C2410_GPD (int) ;
 int S3C_GPIO_PULL_NONE ;
 int S3C_GPIO_SFN (int) ;
 int s3c_gpio_cfgpin (unsigned int,int ) ;
 int s3c_gpio_setpull (unsigned int,int ) ;

__attribute__((used)) static void s3c2416_fb_gpio_setup_24bpp(void)
{
 unsigned int gpio;

 for (gpio = S3C2410_GPC(1); gpio <= S3C2410_GPC(4); gpio++) {
  s3c_gpio_cfgpin(gpio, S3C_GPIO_SFN(2));
  s3c_gpio_setpull(gpio, S3C_GPIO_PULL_NONE);
 }

 for (gpio = S3C2410_GPC(8); gpio <= S3C2410_GPC(15); gpio++) {
  s3c_gpio_cfgpin(gpio, S3C_GPIO_SFN(2));
  s3c_gpio_setpull(gpio, S3C_GPIO_PULL_NONE);
 }

 for (gpio = S3C2410_GPD(0); gpio <= S3C2410_GPD(15); gpio++) {
  s3c_gpio_cfgpin(gpio, S3C_GPIO_SFN(2));
  s3c_gpio_setpull(gpio, S3C_GPIO_PULL_NONE);
 }
}

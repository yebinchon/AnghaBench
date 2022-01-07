
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C64XX_GPI (int ) ;
 int S3C64XX_GPJ (int ) ;
 int S3C_GPIO_SFN (int) ;
 int s3c_gpio_cfgrange_nopull (int ,int,int ) ;

void s3c64xx_fb_gpio_setup_24bpp(void)
{
 s3c_gpio_cfgrange_nopull(S3C64XX_GPI(0), 16, S3C_GPIO_SFN(2));
 s3c_gpio_cfgrange_nopull(S3C64XX_GPJ(0), 12, S3C_GPIO_SFN(2));
}

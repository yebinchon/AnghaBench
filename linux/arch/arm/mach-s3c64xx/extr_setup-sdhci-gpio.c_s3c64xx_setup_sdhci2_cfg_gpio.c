
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int S3C64XX_GPC (int) ;
 int S3C64XX_GPH (int) ;
 int S3C_GPIO_SFN (int) ;
 int s3c_gpio_cfgrange_nopull (int ,int,int ) ;

void s3c64xx_setup_sdhci2_cfg_gpio(struct platform_device *dev, int width)
{

 s3c_gpio_cfgrange_nopull(S3C64XX_GPH(6), width, S3C_GPIO_SFN(3));


 s3c_gpio_cfgrange_nopull(S3C64XX_GPC(4), 2, S3C_GPIO_SFN(3));
}

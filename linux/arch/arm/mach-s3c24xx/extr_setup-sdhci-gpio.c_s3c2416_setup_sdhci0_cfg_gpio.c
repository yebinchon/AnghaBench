
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int S3C2410_GPE (int) ;
 int S3C_GPIO_SFN (int) ;
 int s3c_gpio_cfgrange_nopull (int ,int,int ) ;

void s3c2416_setup_sdhci0_cfg_gpio(struct platform_device *dev, int width)
{
 s3c_gpio_cfgrange_nopull(S3C2410_GPE(5), 2 + width, S3C_GPIO_SFN(2));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int S3C64XX_GPG (int) ;
 int S3C_GPIO_PULL_DOWN ;
 int S3C_GPIO_SFN (int) ;
 int s3c_gpio_cfgrange_nopull (int ,int,int ) ;
 int s3c_gpio_setpull (int ,int ) ;

__attribute__((used)) static void crag6410_cfg_sdhci0(struct platform_device *dev, int width)
{

 s3c_gpio_cfgrange_nopull(S3C64XX_GPG(0), 2 + width, S3C_GPIO_SFN(2));


 s3c_gpio_setpull(S3C64XX_GPG(6), S3C_GPIO_PULL_DOWN);
}

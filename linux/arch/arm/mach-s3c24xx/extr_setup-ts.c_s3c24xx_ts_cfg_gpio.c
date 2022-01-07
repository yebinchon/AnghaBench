
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int S3C2410_GPG (int) ;
 int S3C_GPIO_SFN (int) ;
 int s3c_gpio_cfgpin_range (int ,int,int ) ;

void s3c24xx_ts_cfg_gpio(struct platform_device *dev)
{
 s3c_gpio_cfgpin_range(S3C2410_GPG(12), 4, S3C_GPIO_SFN(3));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int S3C64XX_GPB (int) ;
 int S3C_GPIO_PULL_UP ;
 int S3C_GPIO_SFN (int) ;
 int s3c_gpio_cfgall_range (int ,int,int ,int ) ;

void s3c_i2c1_cfg_gpio(struct platform_device *dev)
{
 s3c_gpio_cfgall_range(S3C64XX_GPB(2), 2,
         S3C_GPIO_SFN(6), S3C_GPIO_PULL_UP);
}

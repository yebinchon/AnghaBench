
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int S3C64XX_GPD (int ) ;
 int S3C_GPIO_SFN (int) ;
 int s3c_gpio_cfgpin_range (int ,int,int ) ;

__attribute__((used)) static int s3c64xx_ac97_cfg_gpd(struct platform_device *pdev)
{
 return s3c_gpio_cfgpin_range(S3C64XX_GPD(0), 5, S3C_GPIO_SFN(4));
}

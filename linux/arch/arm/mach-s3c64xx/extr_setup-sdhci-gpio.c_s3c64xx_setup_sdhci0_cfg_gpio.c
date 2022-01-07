
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c_sdhci_platdata {scalar_t__ cd_type; } ;
struct TYPE_2__ {struct s3c_sdhci_platdata* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;


 int S3C64XX_GPG (int) ;
 int S3C_GPIO_PULL_UP ;
 int S3C_GPIO_SFN (int) ;
 scalar_t__ S3C_SDHCI_CD_INTERNAL ;
 int s3c_gpio_cfgpin (int ,int ) ;
 int s3c_gpio_cfgrange_nopull (int ,int,int ) ;
 int s3c_gpio_setpull (int ,int ) ;

void s3c64xx_setup_sdhci0_cfg_gpio(struct platform_device *dev, int width)
{
 struct s3c_sdhci_platdata *pdata = dev->dev.platform_data;


 s3c_gpio_cfgrange_nopull(S3C64XX_GPG(0), 2 + width, S3C_GPIO_SFN(2));

 if (pdata->cd_type == S3C_SDHCI_CD_INTERNAL) {
  s3c_gpio_setpull(S3C64XX_GPG(6), S3C_GPIO_PULL_UP);
  s3c_gpio_cfgpin(S3C64XX_GPG(6), S3C_GPIO_SFN(2));
 }
}

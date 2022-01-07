
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl8366_smi {int hw_reset; int gpio_sck; int gpio_sda; } ;
struct rtl8366_platform_data {int hw_reset; int gpio_sck; int gpio_sda; } ;
struct TYPE_2__ {struct rtl8366_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;


 int EINVAL ;
 int dev_err (TYPE_1__*,char*) ;

int rtl8366_smi_probe_plat(struct platform_device *pdev, struct rtl8366_smi *smi)
{
 struct rtl8366_platform_data *pdata = pdev->dev.platform_data;

 if (!pdev->dev.platform_data) {
  dev_err(&pdev->dev, "no platform data specified\n");
  return -EINVAL;
 }

 smi->gpio_sda = pdata->gpio_sda;
 smi->gpio_sck = pdata->gpio_sck;
 smi->hw_reset = pdata->hw_reset;

 return 0;
}

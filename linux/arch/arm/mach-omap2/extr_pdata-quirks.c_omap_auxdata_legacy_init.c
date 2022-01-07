
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * platform_data; } ;


 int dev_name (struct device*) ;
 scalar_t__ strcmp (char*,int ) ;
 int twl_gpio_auxdata ;

void omap_auxdata_legacy_init(struct device *dev)
{
 if (dev->platform_data)
  return;

 if (strcmp("twl4030-gpio", dev_name(dev)))
  return;

 dev->platform_data = &twl_gpio_auxdata;
}

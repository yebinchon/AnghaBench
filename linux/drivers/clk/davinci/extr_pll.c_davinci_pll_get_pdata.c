
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ of_node; } ;
struct davinci_pll_platform_data {int cfgchip; } ;


 int GFP_KERNEL ;
 struct davinci_pll_platform_data* dev_get_platdata (struct device*) ;
 struct davinci_pll_platform_data* devm_kzalloc (struct device*,int,int ) ;
 int syscon_regmap_lookup_by_compatible (char*) ;

__attribute__((used)) static struct davinci_pll_platform_data *davinci_pll_get_pdata(struct device *dev)
{
 struct davinci_pll_platform_data *pdata = dev_get_platdata(dev);





 if (!pdata)
  pdata = devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata)
  return ((void*)0);


 if (dev->of_node)
  pdata->cfgchip =
   syscon_regmap_lookup_by_compatible("ti,da830-cfgchip");

 return pdata;
}

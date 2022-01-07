
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct omap_device {int hwmods_cnt; int * hwmods; } ;


 int omap_hwmod_deassert_hardreset (int ,char const*) ;
 struct omap_device* to_omap_device (struct platform_device*) ;

int omap_device_deassert_hardreset(struct platform_device *pdev,
       const char *name)
{
 struct omap_device *od = to_omap_device(pdev);
 int ret = 0;
 int i;

 for (i = 0; i < od->hwmods_cnt; i++) {
  ret = omap_hwmod_deassert_hardreset(od->hwmods[i], name);
  if (ret)
   break;
 }

 return ret;
}

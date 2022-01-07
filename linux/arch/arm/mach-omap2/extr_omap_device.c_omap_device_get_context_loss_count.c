
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dummy; } ;
struct omap_device {int * hwmods; scalar_t__ hwmods_cnt; } ;


 int omap_hwmod_get_context_loss_count (int ) ;
 struct omap_device* to_omap_device (struct platform_device*) ;

int omap_device_get_context_loss_count(struct platform_device *pdev)
{
 struct omap_device *od;
 u32 ret = 0;

 od = to_omap_device(pdev);

 if (od->hwmods_cnt)
  ret = omap_hwmod_get_context_loss_count(od->hwmods[0]);

 return ret;
}

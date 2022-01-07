
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_device {int hwmods_cnt; int * hwmods; } ;


 int omap_hwmod_enable (int ) ;

__attribute__((used)) static int _omap_device_enable_hwmods(struct omap_device *od)
{
 int ret = 0;
 int i;

 for (i = 0; i < od->hwmods_cnt; i++)
  ret |= omap_hwmod_enable(od->hwmods[i]);

 return ret;
}

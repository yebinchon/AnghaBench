
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int probe_type; int owner; int name; } ;




 int cmdline_requested_async_probing (int ) ;
 int module_requested_async_probing (int ) ;

bool driver_allows_async_probing(struct device_driver *drv)
{
 switch (drv->probe_type) {
 case 128:
  return 1;

 case 129:
  return 0;

 default:
  if (cmdline_requested_async_probing(drv->name))
   return 1;

  if (module_requested_async_probing(drv->owner))
   return 1;

  return 0;
 }
}

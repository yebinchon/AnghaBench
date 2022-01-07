
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_driver {int name; TYPE_1__* bus; } ;
struct TYPE_2__ {int name; } ;


 int GFP_KERNEL ;
 char* kasprintf (int ,char*,int ,int ) ;

__attribute__((used)) static char *make_driver_name(struct device_driver *drv)
{
 char *driver_name;

 driver_name = kasprintf(GFP_KERNEL, "%s:%s", drv->bus->name, drv->name);
 if (!driver_name)
  return ((void*)0);

 return driver_name;
}

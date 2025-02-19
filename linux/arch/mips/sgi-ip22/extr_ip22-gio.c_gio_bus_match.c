
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gio_driver {int id_table; } ;
struct gio_device {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 int * gio_match_device (int ,struct gio_device*) ;
 struct gio_device* to_gio_device (struct device*) ;
 struct gio_driver* to_gio_driver (struct device_driver*) ;

__attribute__((used)) static int gio_bus_match(struct device *dev, struct device_driver *drv)
{
 struct gio_device *gio_dev = to_gio_device(dev);
 struct gio_driver *gio_drv = to_gio_driver(drv);

 return gio_match_device(gio_drv->id_table, gio_dev) != ((void*)0);
}

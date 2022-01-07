
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_driver {struct vio_device_id* id_table; } ;
struct vio_device_id {int dummy; } ;
struct vio_dev {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 struct vio_dev* to_vio_dev (struct device*) ;
 struct vio_driver* to_vio_driver (struct device_driver*) ;
 int * vio_match_device (struct vio_device_id const*,struct vio_dev const*) ;

__attribute__((used)) static int vio_bus_match(struct device *dev, struct device_driver *drv)
{
 const struct vio_dev *vio_dev = to_vio_dev(dev);
 struct vio_driver *vio_drv = to_vio_driver(drv);
 const struct vio_device_id *ids = vio_drv->id_table;

 return (ids != ((void*)0)) && (vio_match_device(ids, vio_dev) != ((void*)0));
}

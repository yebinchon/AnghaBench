
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gio_driver {int (* probe ) (struct gio_device*,struct gio_device_id const*) ;int id_table; } ;
struct gio_device_id {int dummy; } ;
struct gio_device {int dummy; } ;
struct device {int driver; } ;


 int ENODEV ;
 int gio_dev_get (struct gio_device*) ;
 int gio_dev_put (struct gio_device*) ;
 struct gio_device_id* gio_match_device (int ,struct gio_device*) ;
 int stub1 (struct gio_device*,struct gio_device_id const*) ;
 struct gio_device* to_gio_device (struct device*) ;
 struct gio_driver* to_gio_driver (int ) ;

__attribute__((used)) static int gio_device_probe(struct device *dev)
{
 int error = -ENODEV;
 struct gio_driver *drv;
 struct gio_device *gio_dev;
 const struct gio_device_id *match;

 drv = to_gio_driver(dev->driver);
 gio_dev = to_gio_device(dev);

 if (!drv->probe)
  return error;

 gio_dev_get(gio_dev);

 match = gio_match_device(drv->id_table, gio_dev);
 if (match)
  error = drv->probe(gio_dev, match);
 if (error)
  gio_dev_put(gio_dev);

 return error;
}

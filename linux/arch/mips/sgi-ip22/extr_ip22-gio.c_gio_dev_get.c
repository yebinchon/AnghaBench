
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gio_device {int dev; } ;
struct device {int dummy; } ;


 struct device* get_device (int *) ;
 struct gio_device* to_gio_device (struct device*) ;

struct gio_device *gio_dev_get(struct gio_device *dev)
{
 struct device *tmp;

 if (!dev)
  return ((void*)0);
 tmp = get_device(&dev->dev);
 if (tmp)
  return to_gio_device(tmp);
 else
  return ((void*)0);
}

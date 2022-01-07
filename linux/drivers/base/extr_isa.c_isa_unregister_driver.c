
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isa_driver {int driver; struct device* devices; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* next; } ;


 int device_unregister (struct device*) ;
 int driver_unregister (int *) ;
 TYPE_1__* to_isa_dev (struct device*) ;

void isa_unregister_driver(struct isa_driver *isa_driver)
{
 struct device *dev = isa_driver->devices;

 while (dev) {
  struct device *tmp = to_isa_dev(dev)->next;
  device_unregister(dev);
  dev = tmp;
 }
 driver_unregister(&isa_driver->driver);
}

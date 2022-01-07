
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_driver* driver; } ;
struct pardevice {int name; TYPE_1__ dev; } ;
struct device_driver {int name; } ;


 int ENODEV ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,int ,int) ;

__attribute__((used)) static int pi_probe(struct pardevice *par_dev)
{
 struct device_driver *drv = par_dev->dev.driver;
 int len = strlen(drv->name);

 if (strncmp(par_dev->name, drv->name, len))
  return -ENODEV;

 return 0;
}

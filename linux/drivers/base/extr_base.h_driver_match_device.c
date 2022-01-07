
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_driver {TYPE_1__* bus; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* match ) (struct device*,struct device_driver*) ;} ;


 int stub1 (struct device*,struct device_driver*) ;

__attribute__((used)) static inline int driver_match_device(struct device_driver *drv,
          struct device *dev)
{
 return drv->bus->match ? drv->bus->match(dev, drv) : 1;
}

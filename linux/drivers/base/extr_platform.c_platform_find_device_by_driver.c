
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 struct device* bus_find_device (int *,struct device*,struct device_driver const*,void*) ;
 int platform_bus_type ;
 scalar_t__ platform_match ;

struct device *platform_find_device_by_driver(struct device *start,
           const struct device_driver *drv)
{
 return bus_find_device(&platform_bus_type, start, drv,
          (void *)platform_match);
}

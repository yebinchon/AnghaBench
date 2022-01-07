
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isa_driver {int (* remove ) (struct device*,int ) ;} ;
struct device {struct isa_driver* platform_data; } ;
struct TYPE_2__ {int id; } ;


 int stub1 (struct device*,int ) ;
 TYPE_1__* to_isa_dev (struct device*) ;

__attribute__((used)) static int isa_bus_remove(struct device *dev)
{
 struct isa_driver *isa_driver = dev->platform_data;

 if (isa_driver && isa_driver->remove)
  return isa_driver->remove(dev, to_isa_dev(dev)->id);

 return 0;
}

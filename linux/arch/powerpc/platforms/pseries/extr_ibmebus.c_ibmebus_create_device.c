
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dma_ops; int * bus; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int ibmebus_bus_device ;
 int ibmebus_bus_type ;
 int ibmebus_dma_ops ;
 int of_device_add (struct platform_device*) ;
 struct platform_device* of_device_alloc (struct device_node*,int *,int *) ;
 int platform_device_put (struct platform_device*) ;

__attribute__((used)) static int ibmebus_create_device(struct device_node *dn)
{
 struct platform_device *dev;
 int ret;

 dev = of_device_alloc(dn, ((void*)0), &ibmebus_bus_device);
 if (!dev)
  return -ENOMEM;

 dev->dev.bus = &ibmebus_bus_type;
 dev->dev.dma_ops = &ibmebus_dma_ops;

 ret = of_device_add(dev);
 if (ret)
  platform_device_put(dev);
 return ret;
}

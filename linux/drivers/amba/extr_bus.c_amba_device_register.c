
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_2__ {int * init_name; } ;
struct amba_device {TYPE_1__ dev; } ;


 int amba_device_add (struct amba_device*,struct resource*) ;
 int amba_device_initialize (struct amba_device*,int *) ;

int amba_device_register(struct amba_device *dev, struct resource *parent)
{
 amba_device_initialize(dev, dev->dev.init_name);
 dev->dev.init_name = ((void*)0);

 return amba_device_add(dev, parent);
}

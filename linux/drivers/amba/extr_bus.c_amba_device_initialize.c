
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int coherent_dma_mask; int * dma_mask; int * bus; int release; } ;
struct TYPE_5__ {int name; } ;
struct amba_device {TYPE_2__ dev; TYPE_1__ res; } ;


 int amba_bustype ;
 int amba_device_release ;
 int dev_name (TYPE_2__*) ;
 int dev_set_name (TYPE_2__*,char*,char const*) ;
 int device_initialize (TYPE_2__*) ;

__attribute__((used)) static void amba_device_initialize(struct amba_device *dev, const char *name)
{
 device_initialize(&dev->dev);
 if (name)
  dev_set_name(&dev->dev, "%s", name);
 dev->dev.release = amba_device_release;
 dev->dev.bus = &amba_bustype;
 dev->dev.dma_mask = &dev->dev.coherent_dma_mask;
 dev->res.name = dev_name(&dev->dev);
}

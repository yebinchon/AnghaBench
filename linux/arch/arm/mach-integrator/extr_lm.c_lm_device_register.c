
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int name; } ;
struct TYPE_7__ {int * bus; int release; } ;
struct lm_device {TYPE_1__ resource; TYPE_3__ dev; int id; } ;


 int dev_name (TYPE_3__*) ;
 int dev_set_name (TYPE_3__*,char*,int ) ;
 int device_register (TYPE_3__*) ;
 int iomem_resource ;
 int lm_bustype ;
 int lm_device_release ;
 int release_resource (TYPE_1__*) ;
 int request_resource (int *,TYPE_1__*) ;

int lm_device_register(struct lm_device *dev)
{
 int ret;

 dev->dev.release = lm_device_release;
 dev->dev.bus = &lm_bustype;

 ret = dev_set_name(&dev->dev, "lm%d", dev->id);
 if (ret)
  return ret;
 dev->resource.name = dev_name(&dev->dev);

 ret = request_resource(&iomem_resource, &dev->resource);
 if (ret == 0) {
  ret = device_register(&dev->dev);
  if (ret)
   release_resource(&dev->resource);
 }
 return ret;
}

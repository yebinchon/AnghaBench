
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_mtu2_device {int * mapbase; TYPE_1__* pdev; } ;
struct resource {int start; } ;
struct TYPE_2__ {int dev; } ;


 int ENXIO ;
 int IORESOURCE_MEM ;
 int dev_err (int *,char*) ;
 int * ioremap_nocache (int ,int ) ;
 struct resource* platform_get_resource (TYPE_1__*,int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int sh_mtu2_map_memory(struct sh_mtu2_device *mtu)
{
 struct resource *res;

 res = platform_get_resource(mtu->pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&mtu->pdev->dev, "failed to get I/O memory\n");
  return -ENXIO;
 }

 mtu->mapbase = ioremap_nocache(res->start, resource_size(res));
 if (mtu->mapbase == ((void*)0))
  return -ENXIO;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_tmu_device {int * mapbase; TYPE_1__* pdev; } ;
struct resource {int start; } ;
struct TYPE_2__ {int dev; } ;


 int ENXIO ;
 int IORESOURCE_MEM ;
 int dev_err (int *,char*) ;
 int * ioremap_nocache (int ,int ) ;
 struct resource* platform_get_resource (TYPE_1__*,int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int sh_tmu_map_memory(struct sh_tmu_device *tmu)
{
 struct resource *res;

 res = platform_get_resource(tmu->pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&tmu->pdev->dev, "failed to get I/O memory\n");
  return -ENXIO;
 }

 tmu->mapbase = ioremap_nocache(res->start, resource_size(res));
 if (tmu->mapbase == ((void*)0))
  return -ENXIO;

 return 0;
}

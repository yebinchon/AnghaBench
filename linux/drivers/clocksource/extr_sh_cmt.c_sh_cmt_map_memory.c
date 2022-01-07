
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_cmt_device {TYPE_1__* pdev; int * mapbase; } ;
struct resource {int start; } ;
struct TYPE_2__ {int dev; } ;


 int ENXIO ;
 int IORESOURCE_MEM ;
 int dev_err (int *,char*) ;
 int * ioremap_nocache (int ,int ) ;
 struct resource* platform_get_resource (TYPE_1__*,int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int sh_cmt_map_memory(struct sh_cmt_device *cmt)
{
 struct resource *mem;

 mem = platform_get_resource(cmt->pdev, IORESOURCE_MEM, 0);
 if (!mem) {
  dev_err(&cmt->pdev->dev, "failed to get I/O memory\n");
  return -ENXIO;
 }

 cmt->mapbase = ioremap_nocache(mem->start, resource_size(mem));
 if (cmt->mapbase == ((void*)0)) {
  dev_err(&cmt->pdev->dev, "failed to remap I/O memory\n");
  return -ENXIO;
 }

 return 0;
}

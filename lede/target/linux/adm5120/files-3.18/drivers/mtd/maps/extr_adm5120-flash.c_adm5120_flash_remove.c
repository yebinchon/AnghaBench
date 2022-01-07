
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_3__ {int * virt; } ;
struct TYPE_4__ {TYPE_1__ map; } ;
struct adm5120_flash_info {int * res; TYPE_2__ amap; int * mtd; } ;


 int iounmap (int *) ;
 int kfree (int *) ;
 int map_destroy (int *) ;
 int mtd_device_unregister (int *) ;
 struct adm5120_flash_info* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int release_resource (int *) ;

__attribute__((used)) static int adm5120_flash_remove(struct platform_device *dev)
{
 struct adm5120_flash_info *info;

 info = platform_get_drvdata(dev);
 if (info == ((void*)0))
  return 0;

 platform_set_drvdata(dev, ((void*)0));

 if (info->mtd != ((void*)0)) {
  mtd_device_unregister(info->mtd);
  map_destroy(info->mtd);
 }

 if (info->amap.map.virt != ((void*)0))
  iounmap(info->amap.map.virt);

 if (info->res != ((void*)0)) {
  release_resource(info->res);
  kfree(info->res);
 }

 return 0;
}

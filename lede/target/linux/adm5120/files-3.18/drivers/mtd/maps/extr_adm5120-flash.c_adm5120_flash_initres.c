
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct map_info {int * virt; int phys; int name; } ;
struct TYPE_2__ {int window_size; struct map_info map; } ;
struct adm5120_flash_info {TYPE_1__ amap; int * res; } ;


 int ENOMEM ;
 int MAP_ERR (struct map_info*,char*) ;
 int * ioremap_nocache (int ,int ) ;
 int * request_mem_region (int ,int ,int ) ;

__attribute__((used)) static int adm5120_flash_initres(struct adm5120_flash_info *info)
{
 struct map_info *map = &info->amap.map;
 int err = 0;

 info->res = request_mem_region(map->phys, info->amap.window_size,
   map->name);
 if (info->res == ((void*)0)) {
  MAP_ERR(map, "could not reserve memory region\n");
  err = -ENOMEM;
  goto out;
 }

 map->virt = ioremap_nocache(map->phys, info->amap.window_size);
 if (map->virt == ((void*)0)) {
  MAP_ERR(map, "failed to ioremap flash region\n");
  err = -ENOMEM;
  goto out;
 }

out:
 return err;
}

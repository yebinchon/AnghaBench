
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {int dummy; } ;
struct adm5120_map_info {unsigned long window_size; } ;
typedef int map_word ;


 int FLASH_LOCK () ;
 int FLASH_UNLOCK () ;
 int MAP_DBG (struct map_info*,char*,unsigned long) ;
 int adm5120_flash_switchbank (struct map_info*,unsigned long) ;
 int inline_map_read (struct map_info*,unsigned long) ;
 struct adm5120_map_info* map_to_amap (struct map_info*) ;
 int map_word_ff (struct map_info*) ;

__attribute__((used)) static map_word adm5120_flash_read(struct map_info *map, unsigned long ofs)
{
 struct adm5120_map_info *amap = map_to_amap(map);
 map_word ret;

 MAP_DBG(map, "reading from ofs %lX\n", ofs);

 if (ofs >= amap->window_size)
  return map_word_ff(map);

 FLASH_LOCK();
 adm5120_flash_switchbank(map, ofs);
 ret = inline_map_read(map, (ofs & (amap->window_size-1)));
 FLASH_UNLOCK();

 return ret;
}

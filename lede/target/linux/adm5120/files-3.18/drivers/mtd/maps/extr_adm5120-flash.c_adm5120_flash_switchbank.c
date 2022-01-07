
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {int dummy; } ;
struct adm5120_map_info {int (* switch_bank ) (unsigned int) ;} ;


 unsigned long BANK_START_MASK ;
 int BUG () ;
 int MAP_DBG (struct map_info*,char*,unsigned int,unsigned long) ;
 struct adm5120_map_info* map_to_amap (struct map_info*) ;
 int stub1 (unsigned int) ;

__attribute__((used)) static void adm5120_flash_switchbank(struct map_info *map,
  unsigned long ofs)
{
 struct adm5120_map_info *amap = map_to_amap(map);
 unsigned bank;

 if (amap->switch_bank == ((void*)0))
  return;

 bank = (ofs & BANK_START_MASK) >> 21;
 if (bank > 1)
  BUG();

 MAP_DBG(map, "switching to bank %u, ofs=%lX\n", bank, ofs);
 amap->switch_bank(bank);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {int dummy; } ;
struct adm5120_map_info {unsigned long window_size; } ;
typedef unsigned long ssize_t ;


 unsigned long BANK_SIZE ;
 int FLASH_LOCK () ;
 int FLASH_UNLOCK () ;
 int MAP_DBG (struct map_info*,char*,unsigned long,unsigned long,unsigned long) ;
 int adm5120_flash_switchbank (struct map_info*,unsigned long) ;
 int inline_map_copy_from (struct map_info*,char*,unsigned long,unsigned long) ;
 struct adm5120_map_info* map_to_amap (struct map_info*) ;

__attribute__((used)) static void adm5120_flash_copy_from(struct map_info *map, void *to,
  unsigned long from, ssize_t len)
{
 struct adm5120_map_info *amap = map_to_amap(map);
 char *p;
 ssize_t t;

 MAP_DBG(map, "copy_from, to=%lX, from=%lX, len=%lX\n",
  (unsigned long)to, from, (unsigned long)len);

 if (from > amap->window_size)
  return;

 p = (char *)to;
 while (len > 0) {
  t = len;
  if ((from < BANK_SIZE) && ((from+len) > BANK_SIZE))
   t = BANK_SIZE-from;

  FLASH_LOCK();
  MAP_DBG(map, "copying %lu byte(s) from %lX to %lX\n",
   (unsigned long)t, (from & (amap->window_size-1)),
   (unsigned long)p);
  adm5120_flash_switchbank(map, from);
  inline_map_copy_from(map, p, (from & (amap->window_size-1)), t);
  FLASH_UNLOCK();
  p += t;
  from += t;
  len -= t;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u8 ;
typedef unsigned int u64 ;
typedef unsigned int u32 ;
typedef unsigned int u16 ;
struct TYPE_2__ {unsigned int (* parse_val ) (int ) ;} ;
struct regmap {int cache_word_size; TYPE_1__ format; } ;


 int BUG () ;
 unsigned int EINVAL ;
 int regcache_get_val_addr (struct regmap*,void const*,unsigned int) ;
 unsigned int stub1 (int ) ;

unsigned int regcache_get_val(struct regmap *map, const void *base,
         unsigned int idx)
{
 if (!base)
  return -EINVAL;


 if (map->format.parse_val)
  return map->format.parse_val(regcache_get_val_addr(map, base,
           idx));

 switch (map->cache_word_size) {
 case 1: {
  const u8 *cache = base;

  return cache[idx];
 }
 case 2: {
  const u16 *cache = base;

  return cache[idx];
 }
 case 4: {
  const u32 *cache = base;

  return cache[idx];
 }







 default:
  BUG();
 }

 return -1;
}

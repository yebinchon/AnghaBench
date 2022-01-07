
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u8 ;
typedef unsigned int u64 ;
typedef unsigned int u32 ;
typedef unsigned int u16 ;
struct TYPE_2__ {int (* format_val ) (void*,unsigned int,int ) ;} ;
struct regmap {unsigned int cache_word_size; TYPE_1__ format; } ;


 int BUG () ;
 unsigned int regcache_get_val (struct regmap*,void*,unsigned int) ;
 int stub1 (void*,unsigned int,int ) ;

bool regcache_set_val(struct regmap *map, void *base, unsigned int idx,
        unsigned int val)
{
 if (regcache_get_val(map, base, idx) == val)
  return 1;


 if (map->format.format_val) {
  map->format.format_val(base + (map->cache_word_size * idx),
           val, 0);
  return 0;
 }

 switch (map->cache_word_size) {
 case 1: {
  u8 *cache = base;

  cache[idx] = val;
  break;
 }
 case 2: {
  u16 *cache = base;

  cache[idx] = val;
  break;
 }
 case 4: {
  u32 *cache = base;

  cache[idx] = val;
  break;
 }
 default:
  BUG();
 }
 return 0;
}

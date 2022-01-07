
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 unsigned int regcache_get_index_by_order (struct regmap const*,unsigned int) ;

__attribute__((used)) static inline unsigned int regcache_flat_get_index(const struct regmap *map,
         unsigned int reg)
{
 return regcache_get_index_by_order(map, reg);
}

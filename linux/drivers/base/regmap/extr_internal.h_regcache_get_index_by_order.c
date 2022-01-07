
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {unsigned int reg_stride_order; } ;



__attribute__((used)) static inline unsigned int regcache_get_index_by_order(const struct regmap *map,
             unsigned int reg)
{
 return reg >> map->reg_stride_order;
}

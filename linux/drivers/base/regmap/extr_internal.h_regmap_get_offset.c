
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {unsigned int reg_stride_order; unsigned int reg_stride; } ;



__attribute__((used)) static inline unsigned int regmap_get_offset(const struct regmap *map,
          unsigned int index)
{
 if (map->reg_stride_order >= 0)
  return index << map->reg_stride_order;
 else
  return index * map->reg_stride;
}

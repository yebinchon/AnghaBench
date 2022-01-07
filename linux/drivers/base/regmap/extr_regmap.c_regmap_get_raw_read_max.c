
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {size_t max_raw_read; } ;



size_t regmap_get_raw_read_max(struct regmap *map)
{
 return map->max_raw_read;
}

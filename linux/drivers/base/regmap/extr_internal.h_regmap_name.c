
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {char const* name; scalar_t__ dev; } ;


 char const* dev_name (scalar_t__) ;

__attribute__((used)) static inline const char *regmap_name(const struct regmap *map)
{
 if (map->dev)
  return dev_name(map->dev);

 return map->name;
}

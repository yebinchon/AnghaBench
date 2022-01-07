
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int val_bytes; scalar_t__ format_write; } ;
struct regmap {TYPE_1__ format; } ;


 int EINVAL ;

int regmap_get_val_bytes(struct regmap *map)
{
 if (map->format.format_write)
  return -EINVAL;

 return map->format.val_bytes;
}

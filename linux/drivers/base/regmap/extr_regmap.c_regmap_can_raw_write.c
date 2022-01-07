
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ format_reg; scalar_t__ format_val; } ;
struct regmap {TYPE_2__ format; TYPE_1__* bus; } ;
struct TYPE_3__ {scalar_t__ write; } ;



bool regmap_can_raw_write(struct regmap *map)
{
 return map->bus && map->bus->write && map->format.format_val &&
  map->format.format_reg;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int (* parse_val ) (void const*) ;} ;
struct regmap {TYPE_1__ format; } ;


 int EINVAL ;
 unsigned int stub1 (void const*) ;

int regmap_parse_val(struct regmap *map, const void *buf,
   unsigned int *val)
{
 if (!map->format.parse_val)
  return -EINVAL;

 *val = map->format.parse_val(buf);

 return 0;
}

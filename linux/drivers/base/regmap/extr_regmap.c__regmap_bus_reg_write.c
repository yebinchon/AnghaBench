
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int bus_context; TYPE_1__* bus; } ;
struct TYPE_2__ {int (* reg_write ) (int ,unsigned int,unsigned int) ;} ;


 int stub1 (int ,unsigned int,unsigned int) ;

__attribute__((used)) static int _regmap_bus_reg_write(void *context, unsigned int reg,
     unsigned int val)
{
 struct regmap *map = context;

 return map->bus->reg_write(map->bus_context, reg, val);
}

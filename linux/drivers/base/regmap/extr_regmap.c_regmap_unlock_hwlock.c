
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int hwlock; } ;


 int hwspin_unlock (int ) ;

__attribute__((used)) static void regmap_unlock_hwlock(void *__map)
{
 struct regmap *map = __map;

 hwspin_unlock(map->hwlock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int spinlock_flags; int hwlock; } ;


 int hwspin_unlock_irqrestore (int ,int *) ;

__attribute__((used)) static void regmap_unlock_hwlock_irqrestore(void *__map)
{
 struct regmap *map = __map;

 hwspin_unlock_irqrestore(map->hwlock, &map->spinlock_flags);
}

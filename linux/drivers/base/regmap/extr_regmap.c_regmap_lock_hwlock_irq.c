
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int hwlock; } ;


 int UINT_MAX ;
 int hwspin_lock_timeout_irq (int ,int ) ;

__attribute__((used)) static void regmap_lock_hwlock_irq(void *__map)
{
 struct regmap *map = __map;

 hwspin_lock_timeout_irq(map->hwlock, UINT_MAX);
}

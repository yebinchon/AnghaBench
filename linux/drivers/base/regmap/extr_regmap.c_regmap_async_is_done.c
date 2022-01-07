
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int async_lock; int async_list; } ;


 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int regmap_async_is_done(struct regmap *map)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&map->async_lock, flags);
 ret = list_empty(&map->async_list);
 spin_unlock_irqrestore(&map->async_lock, flags);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int async_ret; int async_lock; int async_waitq; TYPE_1__* bus; } ;
struct TYPE_2__ {int async_write; } ;


 int regmap_async_is_done (struct regmap*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_regmap_async_complete_done (struct regmap*) ;
 int trace_regmap_async_complete_start (struct regmap*) ;
 int wait_event (int ,int ) ;

int regmap_async_complete(struct regmap *map)
{
 unsigned long flags;
 int ret;


 if (!map->bus || !map->bus->async_write)
  return 0;

 trace_regmap_async_complete_start(map);

 wait_event(map->async_waitq, regmap_async_is_done(map));

 spin_lock_irqsave(&map->async_lock, flags);
 ret = map->async_ret;
 map->async_ret = 0;
 spin_unlock_irqrestore(&map->async_lock, flags);

 trace_regmap_async_complete_done(map);

 return ret;
}

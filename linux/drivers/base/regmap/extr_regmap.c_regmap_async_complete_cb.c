
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_async {int list; struct regmap* map; } ;
struct regmap {int async_ret; int async_waitq; int async_lock; int async_list; int async_free; } ;


 int list_empty (int *) ;
 int list_move (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_regmap_async_io_complete (struct regmap*) ;
 int wake_up (int *) ;

void regmap_async_complete_cb(struct regmap_async *async, int ret)
{
 struct regmap *map = async->map;
 bool wake;

 trace_regmap_async_io_complete(map);

 spin_lock(&map->async_lock);
 list_move(&async->list, &map->async_free);
 wake = list_empty(&map->async_list);

 if (ret != 0)
  map->async_ret = ret;

 spin_unlock(&map->async_lock);

 if (wake)
  wake_up(&map->async_waitq);
}

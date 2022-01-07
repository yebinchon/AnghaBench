
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int mutex; } ;


 int mutex_lock (int *) ;

__attribute__((used)) static void regmap_lock_mutex(void *__map)
{
 struct regmap *map = __map;
 mutex_lock(&map->mutex);
}

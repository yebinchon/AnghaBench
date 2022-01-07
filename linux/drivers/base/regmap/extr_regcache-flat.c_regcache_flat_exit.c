
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int * cache; } ;


 int kfree (int *) ;

__attribute__((used)) static int regcache_flat_exit(struct regmap *map)
{
 kfree(map->cache);
 map->cache = ((void*)0);

 return 0;
}

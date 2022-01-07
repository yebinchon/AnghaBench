
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmpfn; } ;
struct oidmap {TYPE_1__ map; } ;
struct object_id {int dummy; } ;


 void* hashmap_get_from_hash (TYPE_1__*,int ,struct object_id const*) ;
 int oidhash (struct object_id const*) ;

void *oidmap_get(const struct oidmap *map, const struct object_id *key)
{
 if (!map->map.cmpfn)
  return ((void*)0);

 return hashmap_get_from_hash(&map->map, oidhash(key), key);
}

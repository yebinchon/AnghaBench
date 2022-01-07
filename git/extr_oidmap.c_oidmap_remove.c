
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmpfn; } ;
struct oidmap {TYPE_1__ map; } ;
struct object_id {int dummy; } ;
struct hashmap_entry {int dummy; } ;


 int hashmap_entry_init (struct hashmap_entry*,int ) ;
 void* hashmap_remove (TYPE_1__*,struct hashmap_entry*,struct object_id const*) ;
 int oidhash (struct object_id const*) ;
 int oidmap_init (struct oidmap*,int ) ;

void *oidmap_remove(struct oidmap *map, const struct object_id *key)
{
 struct hashmap_entry entry;

 if (!map->map.cmpfn)
  oidmap_init(map, 0);

 hashmap_entry_init(&entry, oidhash(key));
 return hashmap_remove(&map->map, &entry, key);
}

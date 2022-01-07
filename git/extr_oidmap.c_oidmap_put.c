
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct oidmap_entry {int internal_entry; int oid; } ;
struct TYPE_2__ {int cmpfn; } ;
struct oidmap {TYPE_1__ map; } ;


 int hashmap_entry_init (int *,int ) ;
 void* hashmap_put (TYPE_1__*,int *) ;
 int oidhash (int *) ;
 int oidmap_init (struct oidmap*,int ) ;

void *oidmap_put(struct oidmap *map, void *entry)
{
 struct oidmap_entry *to_put = entry;

 if (!map->map.cmpfn)
  oidmap_init(map, 0);

 hashmap_entry_init(&to_put->internal_entry, oidhash(&to_put->oid));
 return hashmap_put(&map->map, &to_put->internal_entry);
}

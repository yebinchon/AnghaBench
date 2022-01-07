
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap_entry {int dummy; } ;
struct hashmap {int dummy; } ;


 int hashmap_add (struct hashmap*,struct hashmap_entry*) ;
 struct hashmap_entry* hashmap_remove (struct hashmap*,struct hashmap_entry*,int *) ;

struct hashmap_entry *hashmap_put(struct hashmap *map,
    struct hashmap_entry *entry)
{
 struct hashmap_entry *old = hashmap_remove(map, entry, ((void*)0));
 hashmap_add(map, entry);
 return old;
}

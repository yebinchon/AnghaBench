
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap_iter {int dummy; } ;
struct hashmap_entry {int dummy; } ;
struct hashmap {char* table; } ;
typedef scalar_t__ ssize_t ;


 int free (char*) ;
 int hashmap_iter_init (struct hashmap*,struct hashmap_iter*) ;
 struct hashmap_entry* hashmap_iter_next (struct hashmap_iter*) ;
 int memset (struct hashmap*,int ,int) ;

void hashmap_free_(struct hashmap *map, ssize_t entry_offset)
{
 if (!map || !map->table)
  return;
 if (entry_offset >= 0) {
  struct hashmap_iter iter;
  struct hashmap_entry *e;

  hashmap_iter_init(map, &iter);
  while ((e = hashmap_iter_next(&iter)))




   free((char *)e - entry_offset);
 }
 free(map->table);
 memset(map, 0, sizeof(*map));
}

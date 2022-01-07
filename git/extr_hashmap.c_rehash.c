
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap_entry {struct hashmap_entry* next; } ;
struct hashmap {unsigned int tablesize; struct hashmap_entry** table; } ;


 int alloc_table (struct hashmap*,unsigned int) ;
 unsigned int bucket (struct hashmap*,struct hashmap_entry*) ;
 int free (struct hashmap_entry**) ;

__attribute__((used)) static void rehash(struct hashmap *map, unsigned int newsize)
{
 unsigned int i, oldsize = map->tablesize;
 struct hashmap_entry **oldtable = map->table;

 alloc_table(map, newsize);
 for (i = 0; i < oldsize; i++) {
  struct hashmap_entry *e = oldtable[i];
  while (e) {
   struct hashmap_entry *next = e->next;
   unsigned int b = bucket(map, e);
   e->next = map->table[b];
   map->table[b] = e;
   e = next;
  }
 }
 free(oldtable);
}

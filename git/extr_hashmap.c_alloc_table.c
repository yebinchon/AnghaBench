
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct hashmap_entry {int dummy; } ;
struct hashmap {unsigned int tablesize; unsigned int grow_at; int shrink_at; int table; } ;


 unsigned int HASHMAP_INITIAL_SIZE ;
 int HASHMAP_LOAD_FACTOR ;
 int HASHMAP_RESIZE_BITS ;
 int xcalloc (unsigned int,int) ;

__attribute__((used)) static void alloc_table(struct hashmap *map, unsigned int size)
{
 map->tablesize = size;
 map->table = xcalloc(size, sizeof(struct hashmap_entry *));


 map->grow_at = (unsigned int) ((uint64_t) size * HASHMAP_LOAD_FACTOR / 100);
 if (size <= HASHMAP_INITIAL_SIZE)
  map->shrink_at = 0;
 else





  map->shrink_at = map->grow_at / ((1 << HASHMAP_RESIZE_BITS) + 1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct hashmap {int do_count_items; void const* cmpfn_data; scalar_t__ cmpfn; } ;
typedef scalar_t__ hashmap_cmp_fn ;


 unsigned int HASHMAP_INITIAL_SIZE ;
 int HASHMAP_LOAD_FACTOR ;
 unsigned int HASHMAP_RESIZE_BITS ;
 int alloc_table (struct hashmap*,unsigned int) ;
 scalar_t__ always_equal ;
 int memset (struct hashmap*,int ,int) ;

void hashmap_init(struct hashmap *map, hashmap_cmp_fn equals_function,
  const void *cmpfn_data, size_t initial_size)
{
 unsigned int size = HASHMAP_INITIAL_SIZE;

 memset(map, 0, sizeof(*map));

 map->cmpfn = equals_function ? equals_function : always_equal;
 map->cmpfn_data = cmpfn_data;


 initial_size = (unsigned int) ((uint64_t) initial_size * 100
   / HASHMAP_LOAD_FACTOR);
 while (initial_size > size)
  size <<= HASHMAP_RESIZE_BITS;
 alloc_table(map, size);





 map->do_count_items = 1;
}

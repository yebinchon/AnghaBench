
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap {scalar_t__ do_count_items; } ;



__attribute__((used)) static inline void hashmap_disable_item_counting(struct hashmap *map)
{
 map->do_count_items = 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap_iter {int * next; scalar_t__ tablepos; struct hashmap* map; } ;
struct hashmap {int dummy; } ;



void hashmap_iter_init(struct hashmap *map, struct hashmap_iter *iter)
{
 iter->map = map;
 iter->tablepos = 0;
 iter->next = ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap_iter {int dummy; } ;
struct hashmap_entry {int dummy; } ;
struct hashmap {int dummy; } ;


 int hashmap_iter_init (struct hashmap*,struct hashmap_iter*) ;
 struct hashmap_entry* hashmap_iter_next (struct hashmap_iter*) ;

__attribute__((used)) static inline struct hashmap_entry *hashmap_iter_first(struct hashmap *map,
  struct hashmap_iter *iter)
{
 hashmap_iter_init(map, iter);
 return hashmap_iter_next(iter);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap_entry {scalar_t__ hash; } ;
struct hashmap {int cmpfn_data; int (* cmpfn ) (int ,struct hashmap_entry const*,struct hashmap_entry const*,void const*) ;} ;


 int stub1 (int ,struct hashmap_entry const*,struct hashmap_entry const*,void const*) ;

__attribute__((used)) static inline int entry_equals(const struct hashmap *map,
  const struct hashmap_entry *e1, const struct hashmap_entry *e2,
  const void *keydata)
{
 return (e1 == e2) ||
        (e1->hash == e2->hash &&
  !map->cmpfn(map->cmpfn_data, e1, e2, keydata));
}

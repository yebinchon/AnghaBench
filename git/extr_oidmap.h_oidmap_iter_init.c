
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oidmap_iter {int h_iter; } ;
struct oidmap {int map; } ;


 int hashmap_iter_init (int *,int *) ;

__attribute__((used)) static inline void oidmap_iter_init(struct oidmap *map, struct oidmap_iter *iter)
{
 hashmap_iter_init(&map->map, &iter->h_iter);
}

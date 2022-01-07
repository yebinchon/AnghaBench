
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oidmap_iter {int dummy; } ;
struct oidmap {int dummy; } ;


 int oidmap_iter_init (struct oidmap*,struct oidmap_iter*) ;
 scalar_t__ oidmap_iter_next (struct oidmap_iter*) ;

__attribute__((used)) static inline void *oidmap_iter_first(struct oidmap *map,
          struct oidmap_iter *iter)
{
 oidmap_iter_init(map, iter);

 return (void *)oidmap_iter_next(iter);
}

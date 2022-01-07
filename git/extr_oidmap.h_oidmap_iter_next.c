
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oidmap_iter {int h_iter; } ;


 scalar_t__ hashmap_iter_next (int *) ;

__attribute__((used)) static inline void *oidmap_iter_next(struct oidmap_iter *iter)
{

 return (void *)hashmap_iter_next(&iter->h_iter);
}

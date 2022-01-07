
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t n_buckets; } ;
typedef TYPE_1__ git_offmap ;
typedef int git_off_t ;


 int GIT_ITEROVER ;
 int kh_exist (TYPE_1__*,size_t) ;
 int kh_key (TYPE_1__*,size_t) ;
 void* kh_value (TYPE_1__*,size_t) ;

int git_offmap_iterate(void **value, git_offmap *map, size_t *iter, git_off_t *key)
{
 size_t i = *iter;

 while (i < map->n_buckets && !kh_exist(map, i))
  i++;

 if (i >= map->n_buckets)
  return GIT_ITEROVER;

 if (key)
  *key = kh_key(map, i);
 if (value)
  *value = kh_value(map, i);
 *iter = ++i;

 return 0;
}

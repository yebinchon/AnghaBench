
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int items; } ;
typedef TYPE_1__ git_sortedcache ;


 void* git_vector_get (int *,size_t) ;
 int git_vector_is_sorted (int *) ;
 int git_vector_sort (int *) ;

void *git_sortedcache_entry(git_sortedcache *sc, size_t pos)
{

 if (!git_vector_is_sorted(&sc->items))
  git_vector_sort(&sc->items);

 return git_vector_get(&sc->items, pos);
}

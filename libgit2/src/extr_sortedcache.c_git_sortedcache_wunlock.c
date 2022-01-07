
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int items; } ;
typedef TYPE_1__ git_sortedcache ;


 int git_rwlock_wrunlock (int *) ;
 int git_vector_sort (int *) ;

void git_sortedcache_wunlock(git_sortedcache *sc)
{
 git_vector_sort(&sc->items);
 git_rwlock_wrunlock(&sc->lock);
}

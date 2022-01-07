
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ git_sortedcache ;


 int GIT_UNUSED (TYPE_1__*) ;
 int git_rwlock_rdunlock (int *) ;

void git_sortedcache_runlock(git_sortedcache *sc)
{
 GIT_UNUSED(sc);
 git_rwlock_rdunlock(&sc->lock);
}

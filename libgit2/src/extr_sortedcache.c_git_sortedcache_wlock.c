
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ git_sortedcache ;


 int GIT_ERROR_OS ;
 int GIT_UNUSED (TYPE_1__*) ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_rwlock_wrlock (int *) ;

int git_sortedcache_wlock(git_sortedcache *sc)
{
 GIT_UNUSED(sc);

 if (git_rwlock_wrlock(&sc->lock) < 0) {
  git_error_set(GIT_ERROR_OS, "unable to acquire write lock on cache");
  return -1;
 }
 return 0;
}

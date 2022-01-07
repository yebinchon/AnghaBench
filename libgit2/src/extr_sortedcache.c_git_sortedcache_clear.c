
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_sortedcache ;


 scalar_t__ git_sortedcache_wlock (int *) ;
 int git_sortedcache_wunlock (int *) ;
 int sortedcache_clear (int *) ;

int git_sortedcache_clear(git_sortedcache *sc, bool wlock)
{
 if (wlock && git_sortedcache_wlock(sc) < 0)
  return -1;

 sortedcache_clear(sc);

 if (wlock)
  git_sortedcache_wunlock(sc);

 return 0;
}

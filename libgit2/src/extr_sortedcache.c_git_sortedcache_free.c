
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_sortedcache ;


 int GIT_REFCOUNT_DEC (int *,int ) ;
 int sortedcache_free ;

void git_sortedcache_free(git_sortedcache *sc)
{
 if (!sc)
  return;
 GIT_REFCOUNT_DEC(sc, sortedcache_free);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_sortedcache ;


 int GIT_REFCOUNT_INC (int *) ;

void git_sortedcache_incref(git_sortedcache *sc)
{
 GIT_REFCOUNT_INC(sc);
}

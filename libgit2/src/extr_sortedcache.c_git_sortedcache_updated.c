
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int path; int stamp; } ;
typedef TYPE_1__ git_sortedcache ;


 int git_futils_filestamp_check (int *,int ) ;

void git_sortedcache_updated(git_sortedcache *sc)
{

 git_futils_filestamp_check(&sc->stamp, sc->path);
}

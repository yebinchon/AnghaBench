
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * configmap_cache; } ;
typedef TYPE_1__ git_repository ;


 int GIT_CONFIGMAP_CACHE_MAX ;
 int GIT_CONFIGMAP_NOT_CACHED ;

void git_repository__configmap_lookup_cache_clear(git_repository *repo)
{
 int i;

 for (i = 0; i < GIT_CONFIGMAP_CACHE_MAX; ++i)
  repo->configmap_cache[i] = GIT_CONFIGMAP_NOT_CACHED;
}

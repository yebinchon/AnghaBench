
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int attrcache; } ;
typedef TYPE_1__ git_repository ;
typedef int git_attr_cache ;


 int attr_cache__free (int *) ;
 int * git__swap (int ,int *) ;

void git_attr_cache_flush(git_repository *repo)
{
 git_attr_cache *cache;




 if (repo && (cache = git__swap(repo->attrcache, ((void*)0))) != ((void*)0))
  attr_cache__free(cache);
}

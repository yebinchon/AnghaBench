
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int submodule_cache; } ;
typedef TYPE_1__ git_repository ;


 int assert (TYPE_1__*) ;
 int git_strmap_new (int *) ;
 int git_submodule__map (TYPE_1__*,int ) ;

int git_repository_submodule_cache_all(git_repository *repo)
{
 int error;

 assert(repo);

 if ((error = git_strmap_new(&repo->submodule_cache)))
  return error;

 error = git_submodule__map(repo, repo->submodule_cache);
 return error;
}

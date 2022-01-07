
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int is_bare; int * workdir; } ;
typedef TYPE_1__ git_repository ;
typedef int git_config ;


 int assert (TYPE_1__*) ;
 int git__free (int *) ;
 int git_config__update_entry (int *,char*,int *,int,int) ;
 int git_config_set_bool (int *,char*,int) ;
 int git_repository_config__weakptr (int **,TYPE_1__*) ;

int git_repository_set_bare(git_repository *repo)
{
 int error;
 git_config *config;

 assert(repo);

 if (repo->is_bare)
  return 0;

 if ((error = git_repository_config__weakptr(&config, repo)) < 0)
  return error;

 if ((error = git_config_set_bool(config, "core.bare", 1)) < 0)
  return error;

 if ((error = git_config__update_entry(config, "core.worktree", ((void*)0), 1, 1)) < 0)
  return error;

 git__free(repo->workdir);
 repo->workdir = ((void*)0);
 repo->is_bare = 1;

 return 0;
}

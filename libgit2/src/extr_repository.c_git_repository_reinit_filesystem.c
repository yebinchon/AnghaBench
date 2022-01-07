
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int is_bare; } ;
typedef TYPE_1__ git_repository ;
typedef int git_config ;
struct TYPE_13__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_config_free (int *) ;
 int git_repository__configmap_lookup_cache_clear (TYPE_1__*) ;
 char* git_repository_path (TYPE_1__*) ;
 int git_repository_workdir (TYPE_1__*) ;
 int git_submodule_foreach (TYPE_1__*,int ,int *) ;
 int repo_init_fs_configs (int *,int ,char const*,int ,int) ;
 int repo_local_config (int **,TYPE_2__*,TYPE_1__*,char const*) ;
 int repo_reinit_submodule_fs ;

int git_repository_reinit_filesystem(git_repository *repo, int recurse)
{
 int error = 0;
 git_buf path = GIT_BUF_INIT;
 git_config *config = ((void*)0);
 const char *repo_dir = git_repository_path(repo);

 if (!(error = repo_local_config(&config, &path, repo, repo_dir)))
  error = repo_init_fs_configs(
   config, path.ptr, repo_dir, git_repository_workdir(repo), 1);

 git_config_free(config);
 git_buf_dispose(&path);

 git_repository__configmap_lookup_cache_clear(repo);

 if (!repo->is_bare && recurse)
  (void)git_submodule_foreach(repo, repo_reinit_submodule_fs, ((void*)0));

 return error;
}

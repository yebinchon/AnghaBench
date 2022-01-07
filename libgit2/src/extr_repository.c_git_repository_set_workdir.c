
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char* workdir; scalar_t__ is_bare; } ;
typedef TYPE_1__ git_repository ;
typedef int git_config ;
struct TYPE_10__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_PASSTHROUGH ;
 int assert (int) ;
 int git__free (char*) ;
 char* git_buf_detach (TYPE_2__*) ;
 int git_config_delete_entry (int *,char*) ;
 int git_config_set_bool (int *,char*,int) ;
 int git_config_set_string (int *,char*,int ) ;
 scalar_t__ git_path_prettify_dir (TYPE_2__*,char const*,int *) ;
 scalar_t__ git_repository_config__weakptr (int **,TYPE_1__*) ;
 int git_repository_path (TYPE_1__*) ;
 int repo_write_gitlink (int ,int ,int) ;
 scalar_t__ strcmp (char*,int ) ;

int git_repository_set_workdir(
 git_repository *repo, const char *workdir, int update_gitlink)
{
 int error = 0;
 git_buf path = GIT_BUF_INIT;

 assert(repo && workdir);

 if (git_path_prettify_dir(&path, workdir, ((void*)0)) < 0)
  return -1;

 if (repo->workdir && strcmp(repo->workdir, path.ptr) == 0)
  return 0;

 if (update_gitlink) {
  git_config *config;

  if (git_repository_config__weakptr(&config, repo) < 0)
   return -1;

  error = repo_write_gitlink(path.ptr, git_repository_path(repo), 0);


  if (error == GIT_PASSTHROUGH)
   error = git_config_delete_entry(config, "core.worktree");
  else if (!error)
   error = git_config_set_string(config, "core.worktree", path.ptr);

  if (!error)
   error = git_config_set_bool(config, "core.bare", 0);
 }

 if (!error) {
  char *old_workdir = repo->workdir;

  repo->workdir = git_buf_detach(&path);
  repo->is_bare = 0;

  git__free(old_workdir);
 }

 return error;
}

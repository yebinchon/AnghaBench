
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int is_bare; int * workdir; scalar_t__ is_worktree; struct TYPE_5__* commondir; struct TYPE_5__* gitdir; } ;
typedef TYPE_1__ git_repository ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int GIT_ERROR_REPOSITORY ;
 void* git_buf_detach (int *) ;
 int git_buf_dispose (int *) ;
 int git_error_set (int ,char*,char const*) ;
 int git_path_prettify_dir (int *,char const*,int *) ;
 TYPE_1__* repository_alloc () ;
 int valid_repository_path (int *,int *) ;

int git_repository_open_bare(
 git_repository **repo_ptr,
 const char *bare_path)
{
 int error;
 git_buf path = GIT_BUF_INIT, common_path = GIT_BUF_INIT;
 git_repository *repo = ((void*)0);

 if ((error = git_path_prettify_dir(&path, bare_path, ((void*)0))) < 0)
  return error;

 if (!valid_repository_path(&path, &common_path)) {
  git_buf_dispose(&path);
  git_buf_dispose(&common_path);
  git_error_set(GIT_ERROR_REPOSITORY, "path is not a repository: %s", bare_path);
  return GIT_ENOTFOUND;
 }

 repo = repository_alloc();
 GIT_ERROR_CHECK_ALLOC(repo);

 repo->gitdir = git_buf_detach(&path);
 GIT_ERROR_CHECK_ALLOC(repo->gitdir);
 repo->commondir = git_buf_detach(&common_path);
 GIT_ERROR_CHECK_ALLOC(repo->commondir);


 repo->is_bare = 1;
 repo->is_worktree = 0;
 repo->workdir = ((void*)0);

 *repo_ptr = repo;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int flags; scalar_t__ origin_url; scalar_t__ initial_head; int mode; } ;
typedef TYPE_1__ git_repository_init_options ;
typedef int git_repository ;
struct TYPE_16__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_EEXISTS ;
 int GIT_ERROR_CHECK_VERSION (TYPE_1__*,int ,char*) ;
 int GIT_ERROR_REPOSITORY ;
 int GIT_HEAD_FILE ;
 int GIT_REPOSITORY_INIT_BARE ;
 int GIT_REPOSITORY_INIT_NO_REINIT ;
 int GIT_REPOSITORY_INIT_OPTIONS_VERSION ;
 int GIT_REPOSITORY_INIT__IS_REINIT ;
 int assert (int ) ;
 char* git_buf_cstr (TYPE_2__*) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_joinpath (TYPE_2__*,int ,int ) ;
 int git_error_set (int ,char*,char const*) ;
 int git_path_exists (int ) ;
 int git_repository_create_head (int ,scalar_t__) ;
 int git_repository_open (int **,int ) ;
 int repo_init_config (int ,char const*,int,int ) ;
 int repo_init_create_origin (int *,scalar_t__) ;
 int repo_init_directories (TYPE_2__*,TYPE_2__*,char const*,TYPE_1__*) ;
 int repo_init_structure (int ,char const*,TYPE_1__*) ;
 scalar_t__ valid_repository_path (TYPE_2__*,TYPE_2__*) ;

int git_repository_init_ext(
 git_repository **out,
 const char *given_repo,
 git_repository_init_options *opts)
{
 git_buf repo_path = GIT_BUF_INIT, wd_path = GIT_BUF_INIT,
  common_path = GIT_BUF_INIT, head_path = GIT_BUF_INIT;
 const char *wd;
 int error;

 assert(out && given_repo && opts);

 GIT_ERROR_CHECK_VERSION(opts, GIT_REPOSITORY_INIT_OPTIONS_VERSION, "git_repository_init_options");

 if ((error = repo_init_directories(&repo_path, &wd_path, given_repo, opts)) < 0)
  goto out;

 wd = (opts->flags & GIT_REPOSITORY_INIT_BARE) ? ((void*)0) : git_buf_cstr(&wd_path);

 if (valid_repository_path(&repo_path, &common_path)) {
  if ((opts->flags & GIT_REPOSITORY_INIT_NO_REINIT) != 0) {
   git_error_set(GIT_ERROR_REPOSITORY,
    "attempt to reinitialize '%s'", given_repo);
   error = GIT_EEXISTS;
   goto out;
  }

  opts->flags |= GIT_REPOSITORY_INIT__IS_REINIT;

  if ((error = repo_init_config(repo_path.ptr, wd, opts->flags, opts->mode)) < 0)
   goto out;


 } else {
  if ((error = repo_init_structure(repo_path.ptr, wd, opts)) < 0 ||
      (error = repo_init_config(repo_path.ptr, wd, opts->flags, opts->mode)) < 0 ||
      (error = git_buf_joinpath(&head_path, repo_path.ptr, GIT_HEAD_FILE)) < 0)
   goto out;






  if ((!git_path_exists(head_path.ptr) || opts->initial_head) &&
      (error = git_repository_create_head(repo_path.ptr, opts->initial_head)) < 0)
   goto out;
 }

 if ((error = git_repository_open(out, repo_path.ptr)) < 0)
  goto out;

 if (opts->origin_url &&
     (error = repo_init_create_origin(*out, opts->origin_url)) < 0)
  goto out;

out:
 git_buf_dispose(&head_path);
 git_buf_dispose(&common_path);
 git_buf_dispose(&repo_path);
 git_buf_dispose(&wd_path);

 return error;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gitdir; } ;
typedef TYPE_1__ git_repository ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_RMDIR_REMOVE_BLOCKERS ;
 int GIT_RMDIR_REMOVE_FILES ;
 int git_buf_clear (int *) ;
 char* git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_joinpath (int *,int ,char const*) ;
 int git_futils_rmdir_r (char const*,int *,int) ;
 scalar_t__ git_path_isdir (char const*) ;
 scalar_t__ git_path_isfile (char const*) ;
 int p_unlink (char const*) ;

int git_repository__cleanup_files(
 git_repository *repo, const char *files[], size_t files_len)
{
 git_buf buf = GIT_BUF_INIT;
 size_t i;
 int error;

 for (error = 0, i = 0; !error && i < files_len; ++i) {
  const char *path;

  if (git_buf_joinpath(&buf, repo->gitdir, files[i]) < 0)
   return -1;

  path = git_buf_cstr(&buf);

  if (git_path_isfile(path)) {
   error = p_unlink(path);
  } else if (git_path_isdir(path)) {
   error = git_futils_rmdir_r(path, ((void*)0),
    GIT_RMDIR_REMOVE_FILES | GIT_RMDIR_REMOVE_BLOCKERS);
  }

  git_buf_clear(&buf);
 }

 git_buf_dispose(&buf);
 return error;
}

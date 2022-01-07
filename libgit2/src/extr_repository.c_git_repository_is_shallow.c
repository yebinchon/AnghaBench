
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct stat {scalar_t__ st_size; } ;
struct TYPE_7__ {int gitdir; } ;
typedef TYPE_1__ git_repository ;
struct TYPE_8__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_joinpath (TYPE_2__*,int ,char*) ;
 int git_error_clear () ;
 int git_path_lstat (int ,struct stat*) ;

int git_repository_is_shallow(git_repository *repo)
{
 git_buf path = GIT_BUF_INIT;
 struct stat st;
 int error;

 if ((error = git_buf_joinpath(&path, repo->gitdir, "shallow")) < 0)
  return error;

 error = git_path_lstat(path.ptr, &st);
 git_buf_dispose(&path);

 if (error == GIT_ENOTFOUND) {
  git_error_clear();
  return 0;
 }

 if (error < 0)
  return error;
 return st.st_size == 0 ? 0 : 1;
}

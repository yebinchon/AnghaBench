
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_config ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 int GIT_MODULES_FILE ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,char const*,int ) ;
 int git_config_free (int *) ;
 int git_config_open_ondisk (int **,int ) ;
 int git_config_snapshot (int **,int *) ;
 char* git_repository_workdir (int *) ;

__attribute__((used)) static int gitmodules_snapshot(git_config **snap, git_repository *repo)
{
 const char *workdir = git_repository_workdir(repo);
 git_config *mods = ((void*)0);
 git_buf path = GIT_BUF_INIT;
 int error;

 if (!workdir)
  return GIT_ENOTFOUND;

 if ((error = git_buf_joinpath(&path, workdir, GIT_MODULES_FILE)) < 0)
  return error;

 if ((error = git_config_open_ondisk(&mods, path.ptr)) < 0)
  goto cleanup;
 git_buf_dispose(&path);

 if ((error = git_config_snapshot(snap, mods)) < 0)
  goto cleanup;

 error = 0;

cleanup:
 if (mods)
  git_config_free(mods);
 git_buf_dispose(&path);

 return error;
}

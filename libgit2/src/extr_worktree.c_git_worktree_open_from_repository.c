
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_worktree ;
typedef int git_repository ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_ERROR_WORKTREE ;
 int git__free (char*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_error_set (int ,char*) ;
 char* git_path_basename (char const*) ;
 int git_path_prettify_dir (TYPE_1__*,char*,char const*) ;
 char* git_repository_commondir (int *) ;
 int git_repository_is_worktree (int *) ;
 char* git_repository_path (int *) ;
 int open_worktree_dir (int **,int ,char const*,char*) ;

int git_worktree_open_from_repository(git_worktree **out, git_repository *repo)
{
 git_buf parent = GIT_BUF_INIT;
 const char *gitdir, *commondir;
 char *name = ((void*)0);
 int error = 0;

 if (!git_repository_is_worktree(repo)) {
  git_error_set(GIT_ERROR_WORKTREE, "cannot open worktree of a non-worktree repo");
  error = -1;
  goto out;
 }

 gitdir = git_repository_path(repo);
 commondir = git_repository_commondir(repo);

 if ((error = git_path_prettify_dir(&parent, "..", commondir)) < 0)
  goto out;


 name = git_path_basename(gitdir);

 if ((error = open_worktree_dir(out, parent.ptr, gitdir, name)) < 0)
  goto out;

out:
 git__free(name);
 git_buf_dispose(&parent);

 return error;
}

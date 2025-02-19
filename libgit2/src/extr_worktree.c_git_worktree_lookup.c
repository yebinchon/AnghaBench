
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_worktree ;
struct TYPE_8__ {int commondir; } ;
typedef TYPE_1__ git_repository ;
struct TYPE_9__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int assert (int) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_printf (TYPE_2__*,char*,int ,char const*) ;
 int git_repository_workdir (TYPE_1__*) ;
 int git_worktree_free (int *) ;
 int open_worktree_dir (int **,int ,int ,char const*) ;

int git_worktree_lookup(git_worktree **out, git_repository *repo, const char *name)
{
 git_buf path = GIT_BUF_INIT;
 git_worktree *wt = ((void*)0);
 int error;

 assert(repo && name);

 *out = ((void*)0);

 if ((error = git_buf_printf(&path, "%s/worktrees/%s", repo->commondir, name)) < 0)
  goto out;

 if ((error = (open_worktree_dir(out, git_repository_workdir(repo), path.ptr, name))) < 0)
  goto out;

out:
 git_buf_dispose(&path);

 if (error)
  git_worktree_free(wt);

 return error;
}

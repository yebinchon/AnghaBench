
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int locked; int gitdir_path; } ;
typedef TYPE_1__ git_worktree ;
struct TYPE_12__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int O_CREAT ;
 int O_EXCL ;
 int O_WRONLY ;
 int assert (TYPE_1__*) ;
 int git_buf_attach_notowned (TYPE_2__*,char const*,int ) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_joinpath (TYPE_2__*,int ,char*) ;
 int git_futils_writebuffer (TYPE_2__*,int ,int,int) ;
 int git_worktree_is_locked (int *,TYPE_1__*) ;
 int strlen (char const*) ;

int git_worktree_lock(git_worktree *wt, const char *reason)
{
 git_buf buf = GIT_BUF_INIT, path = GIT_BUF_INIT;
 int err;

 assert(wt);

 if ((err = git_worktree_is_locked(((void*)0), wt)) < 0)
  goto out;

 if ((err = git_buf_joinpath(&path, wt->gitdir_path, "locked")) < 0)
  goto out;

 if (reason)
  git_buf_attach_notowned(&buf, reason, strlen(reason));

 if ((err = git_futils_writebuffer(&buf, path.ptr, O_CREAT|O_EXCL|O_WRONLY, 0644)) < 0)
  goto out;

 wt->locked = 1;

out:
 git_buf_dispose(&path);

 return err;
}

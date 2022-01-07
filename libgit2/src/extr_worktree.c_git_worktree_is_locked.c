
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int gitdir_path; } ;
typedef TYPE_1__ git_worktree ;
struct TYPE_12__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int assert (TYPE_1__ const*) ;
 int git_buf_clear (TYPE_2__*) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_joinpath (TYPE_2__*,int ,char*) ;
 int git_futils_readbuffer (TYPE_2__*,int ) ;
 int git_path_exists (int ) ;

int git_worktree_is_locked(git_buf *reason, const git_worktree *wt)
{
 git_buf path = GIT_BUF_INIT;
 int ret;

 assert(wt);

 if (reason)
  git_buf_clear(reason);

 if ((ret = git_buf_joinpath(&path, wt->gitdir_path, "locked")) < 0)
  goto out;
 if ((ret = git_path_exists(path.ptr)) && reason)
  git_futils_readbuffer(reason, path.ptr);

out:
 git_buf_dispose(&path);

 return ret;
}

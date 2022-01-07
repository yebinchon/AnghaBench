
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ locked; int gitdir_path; } ;
typedef TYPE_1__ git_worktree ;
struct TYPE_10__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int assert (TYPE_1__*) ;
 int git_buf_dispose (TYPE_2__*) ;
 scalar_t__ git_buf_joinpath (TYPE_2__*,int ,char*) ;
 int git_worktree_is_locked (int *,TYPE_1__*) ;
 scalar_t__ p_unlink (int ) ;

int git_worktree_unlock(git_worktree *wt)
{
 git_buf path = GIT_BUF_INIT;

 assert(wt);

 if (!git_worktree_is_locked(((void*)0), wt))
  return 1;

 if (git_buf_joinpath(&path, wt->gitdir_path, "locked") < 0)
  return -1;

 if (p_unlink(path.ptr) != 0) {
  git_buf_dispose(&path);
  return -1;
 }

 wt->locked = 0;

 git_buf_dispose(&path);

 return 0;
}

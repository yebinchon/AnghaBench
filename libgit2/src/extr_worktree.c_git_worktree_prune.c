
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int popts ;
struct TYPE_16__ {int flags; } ;
typedef TYPE_1__ git_worktree_prune_options ;
struct TYPE_17__ {int gitlink_path; int name; int commondir_path; } ;
typedef TYPE_2__ git_worktree ;
struct TYPE_18__ {int ptr; } ;
typedef TYPE_3__ git_buf ;


 TYPE_3__ GIT_BUF_INIT ;
 int GIT_ERROR_CHECK_VERSION (TYPE_1__*,int ,char*) ;
 int GIT_ERROR_WORKTREE ;
 int GIT_RMDIR_REMOVE_FILES ;
 TYPE_1__ GIT_WORKTREE_PRUNE_OPTIONS_INIT ;
 int GIT_WORKTREE_PRUNE_OPTIONS_VERSION ;
 int GIT_WORKTREE_PRUNE_WORKING_TREE ;
 int git_buf_attach (TYPE_3__*,char*,int ) ;
 int git_buf_dispose (TYPE_3__*) ;
 int git_buf_printf (TYPE_3__*,char*,int ,int ) ;
 int git_error_set (int ,char*,int ) ;
 int git_futils_rmdir_r (int ,int *,int ) ;
 char* git_path_dirname (int ) ;
 int git_path_exists (int ) ;
 int git_worktree_is_prunable (TYPE_2__*,TYPE_1__*) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;

int git_worktree_prune(git_worktree *wt,
 git_worktree_prune_options *opts)
{
 git_worktree_prune_options popts = GIT_WORKTREE_PRUNE_OPTIONS_INIT;
 git_buf path = GIT_BUF_INIT;
 char *wtpath;
 int err;

 GIT_ERROR_CHECK_VERSION(
  opts, GIT_WORKTREE_PRUNE_OPTIONS_VERSION,
  "git_worktree_prune_options");

 if (opts)
  memcpy(&popts, opts, sizeof(popts));

 if (!git_worktree_is_prunable(wt, &popts)) {
  err = -1;
  goto out;
 }


 if ((err = git_buf_printf(&path, "%s/worktrees/%s", wt->commondir_path, wt->name)) < 0)
  goto out;
 if (!git_path_exists(path.ptr))
 {
  git_error_set(GIT_ERROR_WORKTREE, "worktree gitdir '%s' does not exist", path.ptr);
  err = -1;
  goto out;
 }
 if ((err = git_futils_rmdir_r(path.ptr, ((void*)0), GIT_RMDIR_REMOVE_FILES)) < 0)
  goto out;



 if ((popts.flags & GIT_WORKTREE_PRUNE_WORKING_TREE) == 0 ||
  !git_path_exists(wt->gitlink_path))
 {
  goto out;
 }

 if ((wtpath = git_path_dirname(wt->gitlink_path)) == ((void*)0))
  goto out;
 git_buf_attach(&path, wtpath, 0);
 if (!git_path_exists(path.ptr))
 {
  git_error_set(GIT_ERROR_WORKTREE, "working tree '%s' does not exist", path.ptr);
  err = -1;
  goto out;
 }
 if ((err = git_futils_rmdir_r(path.ptr, ((void*)0), GIT_RMDIR_REMOVE_FILES)) < 0)
  goto out;

out:
 git_buf_dispose(&path);

 return err;
}

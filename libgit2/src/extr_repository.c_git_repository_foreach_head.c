
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {size_t count; int * strings; } ;
typedef TYPE_1__ git_strarray ;
typedef int (* git_repository_foreach_head_cb ) (TYPE_2__*,int ,void*) ;
struct TYPE_17__ {int commondir; } ;
typedef TYPE_2__ git_repository ;
struct TYPE_18__ {int ptr; } ;
typedef TYPE_4__ git_buf ;


 TYPE_4__ GIT_BUF_INIT ;
 int GIT_HEAD_FILE ;
 int GIT_REPOSITORY_FOREACH_HEAD_SKIP_REPO ;
 int GIT_REPOSITORY_FOREACH_HEAD_SKIP_WORKTREES ;
 TYPE_1__ GIT_VECTOR_INIT ;
 scalar_t__ get_worktree_file_path (TYPE_4__*,TYPE_2__*,int ,int ) ;
 int git_buf_dispose (TYPE_4__*) ;
 int git_buf_joinpath (TYPE_4__*,int ,int ) ;
 int git_strarray_free (TYPE_1__*) ;
 int git_worktree_list (TYPE_1__*,TYPE_2__*) ;

int git_repository_foreach_head(git_repository *repo,
    git_repository_foreach_head_cb cb,
    int flags, void *payload)
{
 git_strarray worktrees = GIT_VECTOR_INIT;
 git_buf path = GIT_BUF_INIT;
 int error = 0;
 size_t i;


 if (!(flags & GIT_REPOSITORY_FOREACH_HEAD_SKIP_REPO)) {

  if ((error = git_buf_joinpath(&path, repo->commondir, GIT_HEAD_FILE)) < 0 ||
      (error = cb(repo, path.ptr, payload) != 0))
   goto out;
 }

 if (!(flags & GIT_REPOSITORY_FOREACH_HEAD_SKIP_WORKTREES)) {
  if ((error = git_worktree_list(&worktrees, repo)) < 0) {
   error = 0;
   goto out;
  }


  for (i = 0; i < worktrees.count; i++) {
   if (get_worktree_file_path(&path, repo, worktrees.strings[i], GIT_HEAD_FILE) < 0)
    continue;

   if ((error = cb(repo, path.ptr, payload)) != 0)
    goto out;
  }
 }

out:
 git_buf_dispose(&path);
 git_strarray_free(&worktrees);
 return error;
}

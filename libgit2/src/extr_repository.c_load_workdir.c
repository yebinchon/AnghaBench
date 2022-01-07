
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {void* workdir; int gitdir; scalar_t__ is_worktree; scalar_t__ is_bare; } ;
typedef TYPE_1__ git_repository ;
struct TYPE_16__ {scalar_t__ value; } ;
typedef TYPE_2__ git_config_entry ;
typedef int git_config ;
struct TYPE_17__ {int ptr; } ;
typedef TYPE_3__ git_buf ;


 TYPE_3__ GIT_BUF_INIT ;
 int GIT_ERROR_CHECK_ALLOC (void*) ;
 int GIT_GITDIR_FILE ;
 int git_buf_attach (TYPE_3__*,char*,int ) ;
 void* git_buf_detach (TYPE_3__*) ;
 int git_buf_dispose (TYPE_3__*) ;
 int git_config__lookup_entry (TYPE_2__**,int *,char*,int) ;
 int git_config_entry_free (TYPE_2__*) ;
 scalar_t__ git_path_dirname_r (TYPE_3__*,int ) ;
 scalar_t__ git_path_isdir (int ) ;
 int git_path_prettify_dir (TYPE_3__*,scalar_t__,int ) ;
 scalar_t__ git_path_to_dir (TYPE_3__*) ;
 char* git_worktree__read_link (int ,int ) ;

__attribute__((used)) static int load_workdir(git_repository *repo, git_config *config, git_buf *parent_path)
{
 int error;
 git_config_entry *ce;
 git_buf worktree = GIT_BUF_INIT;
 git_buf path = GIT_BUF_INIT;

 if (repo->is_bare)
  return 0;

 if ((error = git_config__lookup_entry(
   &ce, config, "core.worktree", 0)) < 0)
  return error;

 if (repo->is_worktree) {
  char *gitlink = git_worktree__read_link(repo->gitdir, GIT_GITDIR_FILE);
  if (!gitlink) {
   error = -1;
   goto cleanup;
  }

  git_buf_attach(&worktree, gitlink, 0);

  if ((git_path_dirname_r(&worktree, worktree.ptr)) < 0 ||
      git_path_to_dir(&worktree) < 0) {
   error = -1;
   goto cleanup;
  }

  repo->workdir = git_buf_detach(&worktree);
 }
 else if (ce && ce->value) {
  if ((error = git_path_prettify_dir(
    &worktree, ce->value, repo->gitdir)) < 0)
   goto cleanup;

  repo->workdir = git_buf_detach(&worktree);
 }
 else if (parent_path && git_path_isdir(parent_path->ptr))
  repo->workdir = git_buf_detach(parent_path);
 else {
  if (git_path_dirname_r(&worktree, repo->gitdir) < 0 ||
      git_path_to_dir(&worktree) < 0) {
   error = -1;
   goto cleanup;
  }

  repo->workdir = git_buf_detach(&worktree);
 }

 GIT_ERROR_CHECK_ALLOC(repo->workdir);
cleanup:
 git_buf_dispose(&path);
 git_config_entry_free(ce);
 return error;
}

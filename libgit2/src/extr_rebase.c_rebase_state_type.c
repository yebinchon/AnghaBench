
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gitdir; } ;
typedef TYPE_1__ git_repository ;
typedef scalar_t__ git_rebase_type_t ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 scalar_t__ GIT_REBASE_TYPE_APPLY ;
 scalar_t__ GIT_REBASE_TYPE_MERGE ;
 scalar_t__ GIT_REBASE_TYPE_NONE ;
 int REBASE_APPLY_DIR ;
 int REBASE_MERGE_DIR ;
 int git_buf_clear (int *) ;
 int git_buf_cstr (int *) ;
 char* git_buf_detach (int *) ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_joinpath (int *,int ,int ) ;
 scalar_t__ git_path_isdir (int ) ;

__attribute__((used)) static int rebase_state_type(
 git_rebase_type_t *type_out,
 char **path_out,
 git_repository *repo)
{
 git_buf path = GIT_BUF_INIT;
 git_rebase_type_t type = GIT_REBASE_TYPE_NONE;

 if (git_buf_joinpath(&path, repo->gitdir, REBASE_APPLY_DIR) < 0)
  return -1;

 if (git_path_isdir(git_buf_cstr(&path))) {
  type = GIT_REBASE_TYPE_APPLY;
  goto done;
 }

 git_buf_clear(&path);
 if (git_buf_joinpath(&path, repo->gitdir, REBASE_MERGE_DIR) < 0)
  return -1;

 if (git_path_isdir(git_buf_cstr(&path))) {
  type = GIT_REBASE_TYPE_MERGE;
  goto done;
 }

done:
 *type_out = type;

 if (type != GIT_REBASE_TYPE_NONE && path_out)
  *path_out = git_buf_detach(&path);

 git_buf_dispose(&path);

 return 0;
}

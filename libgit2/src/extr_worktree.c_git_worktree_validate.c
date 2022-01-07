
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ commondir_path; scalar_t__ parent_path; scalar_t__ gitlink_path; int gitdir_path; } ;
typedef TYPE_1__ git_worktree ;


 int GIT_ERROR ;
 int GIT_ERROR_WORKTREE ;
 int assert (TYPE_1__ const*) ;
 int git_error_set (int ,char*,scalar_t__) ;
 int git_path_exists (scalar_t__) ;
 int is_worktree_dir (int ) ;

int git_worktree_validate(const git_worktree *wt)
{
 assert(wt);

 if (!is_worktree_dir(wt->gitdir_path)) {
  git_error_set(GIT_ERROR_WORKTREE,
   "worktree gitdir ('%s') is not valid",
   wt->gitlink_path);
  return GIT_ERROR;
 }

 if (wt->parent_path && !git_path_exists(wt->parent_path)) {
  git_error_set(GIT_ERROR_WORKTREE,
   "worktree parent directory ('%s') does not exist ",
   wt->parent_path);
  return GIT_ERROR;
 }

 if (!git_path_exists(wt->commondir_path)) {
  git_error_set(GIT_ERROR_WORKTREE,
   "worktree common directory ('%s') does not exist ",
   wt->commondir_path);
  return GIT_ERROR;
 }

 return 0;
}

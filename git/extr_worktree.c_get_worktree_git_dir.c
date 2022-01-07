
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {int id; } ;


 char const* get_git_common_dir () ;
 char const* get_git_dir () ;
 char const* git_common_path (char*,int ) ;

const char *get_worktree_git_dir(const struct worktree *wt)
{
 if (!wt)
  return get_git_dir();
 else if (!wt->id)
  return get_git_common_dir();
 else
  return git_common_path("worktrees/%s", wt->id);
}

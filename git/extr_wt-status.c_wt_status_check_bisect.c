
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wt_status_state {int bisect_in_progress; int branch; } ;
struct worktree {int dummy; } ;
struct stat {int dummy; } ;


 int get_branch (struct worktree const*,char*) ;
 int stat (int ,struct stat*) ;
 int worktree_git_path (struct worktree const*,char*) ;

int wt_status_check_bisect(const struct worktree *wt,
      struct wt_status_state *state)
{
 struct stat st;

 if (!stat(worktree_git_path(wt, "BISECT_LOG"), &st)) {
  state->bisect_in_progress = 1;
  state->branch = get_branch(wt, "BISECT_START");
  return 1;
 }
 return 0;
}

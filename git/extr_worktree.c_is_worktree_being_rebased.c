
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wt_status_state {scalar_t__ onto; scalar_t__ branch; scalar_t__ rebase_interactive_in_progress; scalar_t__ rebase_in_progress; } ;
struct worktree {int dummy; } ;
typedef int state ;


 int free (scalar_t__) ;
 int memset (struct wt_status_state*,int ,int) ;
 scalar_t__ starts_with (char const*,char*) ;
 int strcmp (scalar_t__,char const*) ;
 int strlen (char*) ;
 scalar_t__ wt_status_check_rebase (struct worktree const*,struct wt_status_state*) ;

int is_worktree_being_rebased(const struct worktree *wt,
         const char *target)
{
 struct wt_status_state state;
 int found_rebase;

 memset(&state, 0, sizeof(state));
 found_rebase = wt_status_check_rebase(wt, &state) &&
  ((state.rebase_in_progress ||
    state.rebase_interactive_in_progress) &&
   state.branch &&
   starts_with(target, "refs/heads/") &&
   !strcmp(state.branch, target + strlen("refs/heads/")));
 free(state.branch);
 free(state.onto);
 return found_rebase;
}

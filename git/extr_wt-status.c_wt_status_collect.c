
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ merge_in_progress; } ;
struct wt_status {int committable; TYPE_1__ state; scalar_t__ branch; int repo; scalar_t__ is_initial; } ;


 int has_unmerged (struct wt_status*) ;
 int strcmp (scalar_t__,char*) ;
 int trace2_region_enter (char*,char*,int ) ;
 int trace2_region_leave (char*,char*,int ) ;
 int wt_status_collect_changes_index (struct wt_status*) ;
 int wt_status_collect_changes_initial (struct wt_status*) ;
 int wt_status_collect_changes_worktree (struct wt_status*) ;
 int wt_status_collect_untracked (struct wt_status*) ;
 int wt_status_get_state (int ,TYPE_1__*,int) ;

void wt_status_collect(struct wt_status *s)
{
 trace2_region_enter("status", "worktrees", s->repo);
 wt_status_collect_changes_worktree(s);
 trace2_region_leave("status", "worktrees", s->repo);

 if (s->is_initial) {
  trace2_region_enter("status", "initial", s->repo);
  wt_status_collect_changes_initial(s);
  trace2_region_leave("status", "initial", s->repo);
 } else {
  trace2_region_enter("status", "index", s->repo);
  wt_status_collect_changes_index(s);
  trace2_region_leave("status", "index", s->repo);
 }

 trace2_region_enter("status", "untracked", s->repo);
 wt_status_collect_untracked(s);
 trace2_region_leave("status", "untracked", s->repo);

 wt_status_get_state(s->repo, &s->state, s->branch && !strcmp(s->branch, "HEAD"));
 if (s->state.merge_in_progress && !has_unmerged(s))
  s->committable = 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wt_status_state {int merge_in_progress; int cherry_pick_in_progress; int revert_in_progress; int revert_head_oid; int cherry_pick_head_oid; } ;
struct stat {int dummy; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
typedef enum replay_action { ____Placeholder_replay_action } replay_action ;


 int REPLAY_PICK ;
 int get_oid (char*,struct object_id*) ;
 int git_path_cherry_pick_head (struct repository*) ;
 int git_path_merge_head (struct repository*) ;
 int git_path_revert_head (struct repository*) ;
 struct object_id null_oid ;
 int oidcpy (int *,struct object_id*) ;
 int sequencer_get_last_command (struct repository*,int*) ;
 int stat (int ,struct stat*) ;
 int wt_status_check_bisect (int *,struct wt_status_state*) ;
 scalar_t__ wt_status_check_rebase (int *,struct wt_status_state*) ;
 int wt_status_get_detached_from (struct repository*,struct wt_status_state*) ;

void wt_status_get_state(struct repository *r,
    struct wt_status_state *state,
    int get_detached_from)
{
 struct stat st;
 struct object_id oid;
 enum replay_action action;

 if (!stat(git_path_merge_head(r), &st)) {
  wt_status_check_rebase(((void*)0), state);
  state->merge_in_progress = 1;
 } else if (wt_status_check_rebase(((void*)0), state)) {
  ;
 } else if (!stat(git_path_cherry_pick_head(r), &st) &&
   !get_oid("CHERRY_PICK_HEAD", &oid)) {
  state->cherry_pick_in_progress = 1;
  oidcpy(&state->cherry_pick_head_oid, &oid);
 }
 wt_status_check_bisect(((void*)0), state);
 if (!stat(git_path_revert_head(r), &st) &&
     !get_oid("REVERT_HEAD", &oid)) {
  state->revert_in_progress = 1;
  oidcpy(&state->revert_head_oid, &oid);
 }
 if (!sequencer_get_last_command(r, &action)) {
  if (action == REPLAY_PICK) {
   state->cherry_pick_in_progress = 1;
   oidcpy(&state->cherry_pick_head_oid, &null_oid);
  } else {
   state->revert_in_progress = 1;
   oidcpy(&state->revert_head_oid, &null_oid);
  }
 }
 if (get_detached_from)
  wt_status_get_detached_from(r, state);
}

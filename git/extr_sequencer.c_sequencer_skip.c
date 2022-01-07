
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct replay_opts {int action; } ;
typedef enum replay_action { ____Placeholder_replay_action } replay_action ;


 int BUG (char*) ;


 int _ (char*) ;
 scalar_t__ advice_resolve_conflict ;
 int advise (int ,char*) ;
 int error (int ) ;
 int file_exists (int ) ;
 int git_path_cherry_pick_head (struct repository*) ;
 int git_path_revert_head (struct repository*) ;
 int git_path_seq_dir () ;
 int is_directory (int ) ;
 int rollback_is_safe () ;
 int sequencer_continue (struct repository*,struct replay_opts*) ;
 int sequencer_get_last_command (struct repository*,int*) ;
 scalar_t__ skip_single_pick () ;

int sequencer_skip(struct repository *r, struct replay_opts *opts)
{
 enum replay_action action = -1;
 sequencer_get_last_command(r, &action);
 switch (opts->action) {
 case 128:
  if (!file_exists(git_path_revert_head(r))) {
   if (action != 128)
    return error(_("no revert in progress"));
   if (!rollback_is_safe())
    goto give_advice;
  }
  break;
 case 129:
  if (!file_exists(git_path_cherry_pick_head(r))) {
   if (action != 129)
    return error(_("no cherry-pick in progress"));
   if (!rollback_is_safe())
    goto give_advice;
  }
  break;
 default:
  BUG("unexpected action in sequencer_skip");
 }

 if (skip_single_pick())
  return error(_("failed to skip the commit"));
 if (!is_directory(git_path_seq_dir()))
  return 0;

 return sequencer_continue(r, opts);

give_advice:
 error(_("there is nothing to skip"));

 if (advice_resolve_conflict) {
  advise(_("have you committed already?\n"
    "try \"git %s --continue\""),
    action == 128 ? "revert" : "cherry-pick");
 }
 return -1;
}

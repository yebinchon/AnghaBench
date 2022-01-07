
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct replay_opts {int action; } ;


 struct replay_opts REPLAY_OPTS_INIT ;
 int REPLAY_PICK ;
 int REPLAY_REVERT ;
 int _ (char*) ;
 scalar_t__ file_exists (int ) ;
 int git_path_cherry_pick_head (struct repository*) ;
 int git_path_revert_head (struct repository*) ;
 int have_finished_the_last_pick () ;
 int sequencer_remove_state (struct replay_opts*) ;
 int unlink (int ) ;
 int warning (int ) ;

void sequencer_post_commit_cleanup(struct repository *r, int verbose)
{
 struct replay_opts opts = REPLAY_OPTS_INIT;
 int need_cleanup = 0;

 if (file_exists(git_path_cherry_pick_head(r))) {
  if (!unlink(git_path_cherry_pick_head(r)) && verbose)
   warning(_("cancelling a cherry picking in progress"));
  opts.action = REPLAY_PICK;
  need_cleanup = 1;
 }

 if (file_exists(git_path_revert_head(r))) {
  if (!unlink(git_path_revert_head(r)) && verbose)
   warning(_("cancelling a revert in progress"));
  opts.action = REPLAY_REVERT;
  need_cleanup = 1;
 }

 if (!need_cleanup)
  return;

 if (!have_finished_the_last_pick())
  return;

 sequencer_remove_state(&opts);
}

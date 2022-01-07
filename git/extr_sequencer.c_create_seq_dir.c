
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
typedef enum replay_action { ____Placeholder_replay_action } replay_action ;


 int BUG (char*) ;


 char* _ (char*) ;
 scalar_t__ advice_sequencer_in_use ;
 int advise (char const*,char*) ;
 int error (char*,char const*) ;
 int error_errno (char*,int ) ;
 scalar_t__ file_exists (int ) ;
 int git_path_cherry_pick_head (struct repository*) ;
 int git_path_revert_head (struct repository*) ;
 int git_path_seq_dir () ;
 scalar_t__ mkdir (int ,int) ;
 int sequencer_get_last_command (struct repository*,int*) ;

__attribute__((used)) static int create_seq_dir(struct repository *r)
{
 enum replay_action action;
 const char *in_progress_error = ((void*)0);
 const char *in_progress_advice = ((void*)0);
 unsigned int advise_skip = file_exists(git_path_revert_head(r)) ||
    file_exists(git_path_cherry_pick_head(r));

 if (!sequencer_get_last_command(r, &action)) {
  switch (action) {
  case 128:
   in_progress_error = _("revert is already in progress");
   in_progress_advice =
   _("try \"git revert (--continue | %s--abort | --quit)\"");
   break;
  case 129:
   in_progress_error = _("cherry-pick is already in progress");
   in_progress_advice =
   _("try \"git cherry-pick (--continue | %s--abort | --quit)\"");
   break;
  default:
   BUG("unexpected action in create_seq_dir");
  }
 }
 if (in_progress_error) {
  error("%s", in_progress_error);
  if (advice_sequencer_in_use)
   advise(in_progress_advice,
    advise_skip ? "--skip | " : "");
  return -1;
 }
 if (mkdir(git_path_seq_dir(), 0777) < 0)
  return error_errno(_("could not create sequencer directory '%s'"),
       git_path_seq_dir());

 return 0;
}

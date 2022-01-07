
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct replay_opts {int explicit_cleanup; int record_origin; int signoff; int gpg_sign; } ;
struct child_process {int git_cmd; int args; int env_array; } ;


 unsigned int ALLOW_EMPTY ;
 unsigned int AMEND_MSG ;
 struct child_process CHILD_PROCESS_INIT ;
 unsigned int CLEANUP_MSG ;
 unsigned int EDIT_MSG ;
 unsigned int VERIFY_MSG ;
 int _ (int ) ;
 int argv_array_push (int *,char*) ;
 int argv_array_pushf (int *,char*,int ) ;
 int argv_array_pushl (int *,char*,char const*,int *) ;
 int error (int ,char const*,char const*) ;
 char* gpg_sign_opt_quoted (struct replay_opts*) ;
 scalar_t__ is_rebase_i (struct replay_opts*) ;
 scalar_t__ read_env_script (int *) ;
 int run_command (struct child_process*) ;
 int run_command_silent_on_success (struct child_process*) ;
 int staged_changes_advice ;

__attribute__((used)) static int run_git_commit(struct repository *r,
     const char *defmsg,
     struct replay_opts *opts,
     unsigned int flags)
{
 struct child_process cmd = CHILD_PROCESS_INIT;

 cmd.git_cmd = 1;

 if (is_rebase_i(opts) && read_env_script(&cmd.env_array)) {
  const char *gpg_opt = gpg_sign_opt_quoted(opts);

  return error(_(staged_changes_advice),
        gpg_opt, gpg_opt);
 }

 argv_array_push(&cmd.args, "commit");

 if (!(flags & VERIFY_MSG))
  argv_array_push(&cmd.args, "-n");
 if ((flags & AMEND_MSG))
  argv_array_push(&cmd.args, "--amend");
 if (opts->gpg_sign)
  argv_array_pushf(&cmd.args, "-S%s", opts->gpg_sign);
 if (defmsg)
  argv_array_pushl(&cmd.args, "-F", defmsg, ((void*)0));
 else if (!(flags & EDIT_MSG))
  argv_array_pushl(&cmd.args, "-C", "HEAD", ((void*)0));
 if ((flags & CLEANUP_MSG))
  argv_array_push(&cmd.args, "--cleanup=strip");
 if ((flags & EDIT_MSG))
  argv_array_push(&cmd.args, "-e");
 else if (!(flags & CLEANUP_MSG) &&
   !opts->signoff && !opts->record_origin &&
   !opts->explicit_cleanup)
  argv_array_push(&cmd.args, "--cleanup=verbatim");

 if ((flags & ALLOW_EMPTY))
  argv_array_push(&cmd.args, "--allow-empty");

 if (!(flags & EDIT_MSG))
  argv_array_push(&cmd.args, "--allow-empty-message");

 if (is_rebase_i(opts) && !(flags & EDIT_MSG))
  return run_command_silent_on_success(&cmd);
 else
  return run_command(&cmd);
}

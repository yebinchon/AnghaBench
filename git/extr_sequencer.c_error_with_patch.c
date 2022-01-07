
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct replay_opts {int dummy; } ;
struct commit {int dummy; } ;


 char* _ (char*) ;
 scalar_t__ copy_file (char*,int ,int) ;
 int error (char*,int ,char*) ;
 int fprintf (int ,char*,char*) ;
 int fprintf_ln (int ,char*,int,...) ;
 int git_path_merge_msg (struct repository*) ;
 char* gpg_sign_opt_quoted (struct replay_opts*) ;
 scalar_t__ intend_to_amend () ;
 scalar_t__ make_patch (struct repository*,struct commit*,struct replay_opts*) ;
 char* rebase_path_message () ;
 int short_commit_name (struct commit*) ;
 int stderr ;

__attribute__((used)) static int error_with_patch(struct repository *r,
       struct commit *commit,
       const char *subject, int subject_len,
       struct replay_opts *opts,
       int exit_code, int to_amend)
{
 if (commit) {
  if (make_patch(r, commit, opts))
   return -1;
 } else if (copy_file(rebase_path_message(),
        git_path_merge_msg(r), 0666))
  return error(_("unable to copy '%s' to '%s'"),
        git_path_merge_msg(r), rebase_path_message());

 if (to_amend) {
  if (intend_to_amend())
   return -1;

  fprintf(stderr,
   _("You can amend the commit now, with\n"
     "\n"
     "  git commit --amend %s\n"
     "\n"
     "Once you are satisfied with your changes, run\n"
     "\n"
     "  git rebase --continue\n"),
   gpg_sign_opt_quoted(opts));
 } else if (exit_code) {
  if (commit)
   fprintf_ln(stderr, _("Could not apply %s... %.*s"),
       short_commit_name(commit), subject_len, subject);
  else




   fprintf_ln(stderr, _("Could not merge %.*s"),
       subject_len, subject);
 }

 return exit_code;
}

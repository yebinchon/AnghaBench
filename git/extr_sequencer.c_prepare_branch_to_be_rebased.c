
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct replay_opts {int dummy; } ;


 int _ (char*) ;
 int error (int ,char const*) ;
 char* reflog_message (struct replay_opts*,char*,char*,char const*) ;
 scalar_t__ run_git_checkout (struct repository*,struct replay_opts*,char const*,char const*) ;

int prepare_branch_to_be_rebased(struct repository *r, struct replay_opts *opts,
     const char *commit)
{
 const char *action;

 if (commit && *commit) {
  action = reflog_message(opts, "start", "checkout %s", commit);
  if (run_git_checkout(r, opts, commit, action))
   return error(_("could not checkout %s"), commit);
 }

 return 0;
}

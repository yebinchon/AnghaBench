
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct replay_opts {int dummy; } ;


 int _ (char*) ;
 char* action_name (struct replay_opts*) ;
 scalar_t__ advice_commit_before_merge ;
 int advise (int ) ;
 int error (int ,int ) ;
 int error_resolve_conflict (int ) ;
 scalar_t__ repo_read_index_unmerged (struct repository*) ;

__attribute__((used)) static int error_dirty_index(struct repository *repo, struct replay_opts *opts)
{
 if (repo_read_index_unmerged(repo))
  return error_resolve_conflict(_(action_name(opts)));

 error(_("your local changes would be overwritten by %s."),
  _(action_name(opts)));

 if (advice_commit_before_merge)
  advise(_("commit your changes or stash them to proceed."));
 return -1;
}

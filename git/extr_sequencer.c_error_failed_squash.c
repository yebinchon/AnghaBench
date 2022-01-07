
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct replay_opts {int dummy; } ;
struct commit {int dummy; } ;


 int _ (char*) ;
 scalar_t__ copy_file (char*,char*,int) ;
 int error (int ,char*,char*) ;
 int error_with_patch (struct repository*,struct commit*,char const*,int,struct replay_opts*,int,int ) ;
 char* git_path_merge_msg (struct repository*) ;
 char* rebase_path_message () ;
 char* rebase_path_squash_msg () ;
 int unlink (char*) ;

__attribute__((used)) static int error_failed_squash(struct repository *r,
          struct commit *commit,
          struct replay_opts *opts,
          int subject_len,
          const char *subject)
{
 if (copy_file(rebase_path_message(), rebase_path_squash_msg(), 0666))
  return error(_("could not copy '%s' to '%s'"),
   rebase_path_squash_msg(), rebase_path_message());
 unlink(git_path_merge_msg(r));
 if (copy_file(git_path_merge_msg(r), rebase_path_message(), 0666))
  return error(_("could not copy '%s' to '%s'"),
        rebase_path_message(),
        git_path_merge_msg(r));
 return error_with_patch(r, commit, subject, subject_len, opts, 1, 0);
}

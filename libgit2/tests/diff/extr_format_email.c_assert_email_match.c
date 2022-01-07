
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_4__ {int flags; int summary; int author; int id; } ;
typedef TYPE_1__ git_diff_format_email_options ;
typedef int git_diff ;
typedef int git_commit ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_clear (int *) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_commit_author (int *) ;
 int git_commit_free (int *) ;
 int git_commit_id (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_commit_summary (int *) ;
 int git_diff__commit (int **,int ,int *,int *) ;
 int git_diff_commit_as_email (int *,int ,int *,int,int,int ,int *) ;
 int git_diff_format_email (int *,int *,TYPE_1__*) ;
 int git_diff_free (int *) ;
 int git_oid_fromstr (int *,char const*) ;
 int repo ;

__attribute__((used)) static void assert_email_match(
 const char *expected,
 const char *oidstr,
 git_diff_format_email_options *opts)
{
 git_oid oid;
 git_commit *commit = ((void*)0);
 git_diff *diff = ((void*)0);
 git_buf buf = GIT_BUF_INIT;

 git_oid_fromstr(&oid, oidstr);

 cl_git_pass(git_commit_lookup(&commit, repo, &oid));

 opts->id = git_commit_id(commit);
 opts->author = git_commit_author(commit);
 if (!opts->summary)
  opts->summary = git_commit_summary(commit);

 cl_git_pass(git_diff__commit(&diff, repo, commit, ((void*)0)));
 cl_git_pass(git_diff_format_email(&buf, diff, opts));

 cl_assert_equal_s(expected, git_buf_cstr(&buf));
 git_buf_clear(&buf);

 cl_git_pass(git_diff_commit_as_email(
  &buf, repo, commit, 1, 1, opts->flags, ((void*)0)));
 cl_assert_equal_s(expected, git_buf_cstr(&buf));

 git_diff_free(diff);
 git_commit_free(commit);
 git_buf_dispose(&buf);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reflog_entry ;
typedef int git_reflog ;


 int GIT_UNUSED (char const*) ;
 int cl_assert_equal_i (size_t,int ) ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int * git_reflog_entry_byindex (int *,int ) ;
 int git_reflog_entry_message (int const*) ;
 int git_reflog_entrycount (int *) ;
 int git_reflog_free (int *) ;
 int git_reflog_read (int **,int *,char const*) ;

void reflog_check(git_repository *repo, const char *refname,
  size_t exp_count, const char *exp_email, const char *exp_msg)
{
 git_reflog *log;
 const git_reflog_entry *entry;

 GIT_UNUSED(exp_email);

 cl_git_pass(git_reflog_read(&log, repo, refname));
 cl_assert_equal_i(exp_count, git_reflog_entrycount(log));
 entry = git_reflog_entry_byindex(log, 0);

 if (exp_msg)
  cl_assert_equal_s(exp_msg, git_reflog_entry_message(entry));

 git_reflog_free(log);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reflog ;
typedef int git_reference ;


 int cl_assert_equal_i (size_t,size_t) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_reference_create (int **,int ,char*,int ,int,int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_reference_target (int *) ;
 size_t git_reflog_entrycount (int *) ;
 int git_reflog_free (int *) ;
 int git_reflog_read (int **,int ,char*) ;

void test_refs_reflog_reflog__do_not_append_when_no_update(void)
{
 size_t nlogs, nlogs_after;
 git_reference *ref, *ref2;
 git_reflog *log;

 cl_git_pass(git_reflog_read(&log, g_repo, "HEAD"));
 nlogs = git_reflog_entrycount(log);
 git_reflog_free(log);

 cl_git_pass(git_reference_lookup(&ref, g_repo, "refs/heads/master"));
 cl_git_pass(git_reference_create(&ref2, g_repo, "refs/heads/master",
      git_reference_target(ref), 1, ((void*)0)));

 git_reference_free(ref);
 git_reference_free(ref2);

 cl_git_pass(git_reflog_read(&log, g_repo, "HEAD"));
 nlogs_after = git_reflog_entrycount(log);
 git_reflog_free(log);

 cl_assert_equal_i(nlogs_after, nlogs);
}

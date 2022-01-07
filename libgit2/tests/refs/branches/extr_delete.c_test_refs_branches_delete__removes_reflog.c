
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_signature ;
typedef int git_reflog ;
typedef int git_reference ;
struct TYPE_4__ {int member_0; } ;
struct TYPE_5__ {TYPE_1__ member_0; } ;
typedef TYPE_2__ git_oid ;


 int GIT_BRANCH_LOCAL ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,scalar_t__) ;
 int cl_git_pass (int ) ;
 int git_branch_delete (int *) ;
 int git_branch_lookup (int **,int ,char*,int ) ;
 int git_reference_free (int *) ;
 scalar_t__ git_reference_has_log (int ,char*) ;
 int git_reflog_append (int *,TYPE_2__*,int *,char*) ;
 scalar_t__ git_reflog_entrycount (int *) ;
 int git_reflog_free (int *) ;
 int git_reflog_read (int **,int ,char*) ;
 int git_signature_free (int *) ;
 int git_signature_now (int **,char*,char*) ;
 int repo ;

void test_refs_branches_delete__removes_reflog(void)
{
 git_reference *branch;
 git_reflog *log;
 git_oid oidzero = {{0}};
 git_signature *sig;


 cl_git_pass(git_signature_now(&sig, "Me", "user@example.com"));
 cl_git_pass(git_reflog_read(&log, repo, "refs/heads/track-local"));
 cl_git_pass(git_reflog_append(log, &oidzero, sig, "message"));
 cl_assert(git_reflog_entrycount(log) > 0);
 git_signature_free(sig);
 git_reflog_free(log);

 cl_git_pass(git_branch_lookup(&branch, repo, "track-local", GIT_BRANCH_LOCAL));
 cl_git_pass(git_branch_delete(branch));
 git_reference_free(branch);

 cl_assert_equal_i(0, git_reference_has_log(repo, "refs/heads/track-local"));


 cl_git_pass(git_reflog_read(&log, repo, "refs/heads/track-local"));
 cl_assert_equal_i(0, git_reflog_entrycount(log));
 git_reflog_free(log);
}

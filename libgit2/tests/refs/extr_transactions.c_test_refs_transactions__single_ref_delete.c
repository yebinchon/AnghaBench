
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int GIT_ENOTFOUND ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int g_tx ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_transaction_commit (int ) ;
 int git_transaction_lock_ref (int ,char*) ;
 int git_transaction_remove (int ,char*) ;

void test_refs_transactions__single_ref_delete(void)
{
 git_reference *ref;

 cl_git_pass(git_transaction_lock_ref(g_tx, "refs/heads/master"));
 cl_git_pass(git_transaction_remove(g_tx, "refs/heads/master"));
 cl_git_pass(git_transaction_commit(g_tx));

 cl_git_fail_with(GIT_ENOTFOUND, git_reference_lookup(&ref, g_repo, "refs/heads/master"));
}

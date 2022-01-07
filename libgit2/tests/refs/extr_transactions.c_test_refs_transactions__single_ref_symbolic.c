
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int g_tx ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_reference_symbolic_target (int *) ;
 int git_transaction_commit (int ) ;
 int git_transaction_lock_ref (int ,char*) ;
 int git_transaction_set_symbolic_target (int ,char*,char*,int *,int *) ;

void test_refs_transactions__single_ref_symbolic(void)
{
 git_reference *ref;

 cl_git_pass(git_transaction_lock_ref(g_tx, "HEAD"));
 cl_git_pass(git_transaction_set_symbolic_target(g_tx, "HEAD", "refs/heads/foo", ((void*)0), ((void*)0)));
 cl_git_pass(git_transaction_commit(g_tx));

 cl_git_pass(git_reference_lookup(&ref, g_repo, "HEAD"));

 cl_assert_equal_s("refs/heads/foo", git_reference_symbolic_target(ref));
 git_reference_free(ref);
}

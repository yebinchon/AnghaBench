
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_transaction ;


 int cl_git_pass (int ) ;
 int g_repo ;
 int * g_tx ;
 int git_transaction_commit (int *) ;
 int git_transaction_free (int *) ;
 int git_transaction_lock_ref (int *,char*) ;
 int git_transaction_new (int **,int ) ;

void test_refs_transactions__commit_unlocks_unmodified_ref(void)
{
 git_transaction *second_tx;

 cl_git_pass(git_transaction_new(&second_tx, g_repo));
 cl_git_pass(git_transaction_lock_ref(second_tx, "refs/heads/master"));
 cl_git_pass(git_transaction_commit(second_tx));


 cl_git_pass(git_transaction_lock_ref(g_tx, "refs/heads/master"));

 git_transaction_free(second_tx);
}

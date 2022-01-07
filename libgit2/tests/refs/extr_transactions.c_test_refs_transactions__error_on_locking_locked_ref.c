
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_transaction ;
typedef int git_repository ;
typedef int git_oid ;


 int GIT_ELOCKED ;
 int GIT_ENOTFOUND ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int * g_tx ;
 int git_oid_fromstr (int *,char*) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,char const*) ;
 char* git_repository_path (int ) ;
 int git_transaction_free (int *) ;
 int git_transaction_lock_ref (int *,char*) ;
 int git_transaction_new (int **,int *) ;
 int git_transaction_set_target (int *,char*,int *,int *,int *) ;

void test_refs_transactions__error_on_locking_locked_ref(void)
{
 git_oid id;
 git_transaction *g_tx_with_lock;
 git_repository *g_repo_with_locking_tx;
 const char *g_repo_path = git_repository_path(g_repo);


 cl_git_pass(git_repository_open(&g_repo_with_locking_tx, g_repo_path));
 cl_git_pass(git_transaction_new(&g_tx_with_lock, g_repo_with_locking_tx));
 cl_git_pass(git_transaction_lock_ref(g_tx_with_lock, "refs/heads/master"));


 cl_git_pass(git_oid_fromstr(&id, "a65fedf39aefe402d3bb6e24df4d4f5fe4547750"));
 cl_git_fail_with(GIT_ELOCKED, git_transaction_lock_ref(g_tx, "refs/heads/master"));
 cl_git_fail_with(GIT_ENOTFOUND, git_transaction_set_target(g_tx, "refs/heads/master", &id, ((void*)0), ((void*)0)));

 git_transaction_free(g_tx_with_lock);
 git_repository_free(g_repo_with_locking_tx);
}

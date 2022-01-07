
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_ENOTFOUND ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_tx ;
 int git_oid_fromstr (int *,char*) ;
 int git_transaction_commit (int ) ;
 int git_transaction_lock_ref (int ,char*) ;
 int git_transaction_set_target (int ,char*,int *,int *,int *) ;

void test_refs_transactions__unlocked_set(void)
{
 git_oid id;

 cl_git_pass(git_transaction_lock_ref(g_tx, "refs/heads/master"));
 git_oid_fromstr(&id, "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
 cl_git_fail_with(GIT_ENOTFOUND, git_transaction_set_target(g_tx, "refs/heads/foo", &id, ((void*)0), ((void*)0)));
 cl_git_pass(git_transaction_commit(g_tx));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_oid ;


 int GIT_ENOTFOUND ;
 int cl_assert (int) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int g_tx ;
 int git_oid_cmp (int *,int ) ;
 int git_oid_fromstr (int *,char*) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char const*) ;
 int git_reference_target (int *) ;
 int git_transaction_commit (int ) ;
 int git_transaction_lock_ref (int ,char const*) ;
 int git_transaction_set_target (int ,char const*,int *,int *,int *) ;

void test_refs_transactions__single_create(void)
{
 git_reference *ref;
 const char *name = "refs/heads/new-branch";
 git_oid id;

 cl_git_fail_with(GIT_ENOTFOUND, git_reference_lookup(&ref, g_repo, name));

 cl_git_pass(git_transaction_lock_ref(g_tx, name));

 git_oid_fromstr(&id, "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
 cl_git_pass(git_transaction_set_target(g_tx, name, &id, ((void*)0), ((void*)0)));
 cl_git_pass(git_transaction_commit(g_tx));

 cl_git_pass(git_reference_lookup(&ref, g_repo, name));
 cl_assert(!git_oid_cmp(&id, git_reference_target(ref)));
 git_reference_free(ref);
}

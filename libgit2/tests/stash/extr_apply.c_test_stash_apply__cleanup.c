
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_sandbox_cleanup () ;
 int git_index_free (int *) ;
 int git_signature_free (int *) ;
 int * repo_index ;
 int * signature ;

void test_stash_apply__cleanup(void)
{
 git_signature_free(signature);
 signature = ((void*)0);

 git_index_free(repo_index);
 repo_index = ((void*)0);

 cl_git_sandbox_cleanup();
}

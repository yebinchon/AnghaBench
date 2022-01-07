
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * branch ;
 int cl_git_sandbox_cleanup () ;
 int git_commit_free (int *) ;
 int git_reference_free (int *) ;
 int * repo ;
 int * target ;

void test_refs_branches_create__cleanup(void)
{
 git_reference_free(branch);
 branch = ((void*)0);

 git_commit_free(target);
 target = ((void*)0);

 cl_git_sandbox_cleanup();
 repo = ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * branch ;
 int cl_git_sandbox_cleanup () ;
 int git_reference_free (int *) ;
 int * repo ;

void test_refs_branches_ishead__cleanup(void)
{
 git_reference_free(branch);
 branch = ((void*)0);

 cl_git_sandbox_cleanup();
 repo = ((void*)0);
}

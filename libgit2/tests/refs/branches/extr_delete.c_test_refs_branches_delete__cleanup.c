
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_sandbox_cleanup () ;
 int * fake_remote ;
 int git_reference_free (int *) ;
 int * repo ;

void test_refs_branches_delete__cleanup(void)
{
 git_reference_free(fake_remote);
 fake_remote = ((void*)0);

 cl_git_sandbox_cleanup();
 repo = ((void*)0);
}

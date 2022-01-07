
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * branch ;
 int git_reference_free (int *) ;
 int git_repository_free (int *) ;
 int * repo ;
 int * upstream ;

void test_refs_branches_upstream__cleanup(void)
{
 git_reference_free(upstream);
 git_reference_free(branch);
 branch = ((void*)0);

 git_repository_free(repo);
 repo = ((void*)0);
}

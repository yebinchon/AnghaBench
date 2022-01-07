
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_reference_free (int *) ;
 int git_repository_free (int *) ;
 int * ref ;
 int * repo ;

void test_refs_branches_name__cleanup(void)
{
 git_reference_free(ref);
 ref = ((void*)0);

 git_repository_free(repo);
 repo = ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_fixture_cleanup (char*) ;
 int cl_git_sandbox_cleanup () ;
 int * fake_remote ;
 int git_reference_free (int *) ;
 int git_repository_free (int *) ;
 int * repo ;

void test_refs_branches_iterator__cleanup(void)
{
 git_reference_free(fake_remote);
 fake_remote = ((void*)0);

 git_repository_free(repo);
 repo = ((void*)0);

 cl_fixture_cleanup("testrepo.git");

 cl_git_sandbox_cleanup();
}

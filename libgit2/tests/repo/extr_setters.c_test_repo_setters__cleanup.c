
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_fixture_cleanup (char*) ;
 int git_repository_free (int *) ;
 int * repo ;

void test_repo_setters__cleanup(void)
{
 git_repository_free(repo);
 repo = ((void*)0);

 cl_fixture_cleanup("testrepo.git");
 cl_fixture_cleanup("new_workdir");
}

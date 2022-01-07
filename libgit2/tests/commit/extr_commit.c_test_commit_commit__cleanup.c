
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _repo ;
 int cl_fixture_cleanup (char*) ;
 int git_repository_free (int *) ;

void test_commit_commit__cleanup(void)
{
 git_repository_free(_repo);
 _repo = ((void*)0);

 cl_fixture_cleanup("testrepo.git");
}

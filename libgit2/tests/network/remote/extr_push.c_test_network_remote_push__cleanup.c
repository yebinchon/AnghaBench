
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _dummy ;
 int * _remote ;
 int * _repo ;
 int cl_fixture_cleanup (char*) ;
 int git_remote_free (int *) ;
 int git_repository_free (int *) ;

void test_network_remote_push__cleanup(void)
{
 git_remote_free(_remote);
 _remote = ((void*)0);

 git_repository_free(_repo);
 _repo = ((void*)0);

 git_repository_free(_dummy);
 _dummy = ((void*)0);

 cl_fixture_cleanup("testrepo.git");
 cl_fixture_cleanup("dummy.git");
}

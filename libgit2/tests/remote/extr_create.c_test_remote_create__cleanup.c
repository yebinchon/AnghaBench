
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _config ;
 int _repo ;
 int cl_fixture_cleanup (char*) ;
 int git_config_free (int ) ;
 int git_repository_free (int ) ;

void test_remote_create__cleanup(void)
{
 git_config_free(_config);

 git_repository_free(_repo);

 cl_fixture_cleanup("testrepo.git");
}

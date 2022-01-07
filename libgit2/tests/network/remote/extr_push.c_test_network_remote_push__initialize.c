
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _dummy ;
 int _remote ;
 int _repo ;
 int cl_fixture_sandbox (char*) ;
 int cl_git_pass (int ) ;
 int cl_git_path_url (char*) ;
 int git_remote_create (int *,int ,char*,int ) ;
 int git_repository_init (int *,char*,int) ;
 int git_repository_open (int *,char*) ;

void test_network_remote_push__initialize(void)
{
 cl_fixture_sandbox("testrepo.git");
 git_repository_open(&_repo, "testrepo.git");


 cl_git_pass(git_repository_init(&_dummy, "dummy.git", 1));
 cl_git_pass(git_remote_create(&_remote, _dummy, "origin", cl_git_path_url("testrepo.git")));
}

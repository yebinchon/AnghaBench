
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_fixture_sandbox (char*) ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int git_repository_open (int *,char*) ;
 int p_mkdir (char*,int) ;
 int repo ;

void test_repo_setters__initialize(void)
{
 cl_fixture_sandbox("testrepo.git");
 cl_git_pass(git_repository_open(&repo, "testrepo.git"));
 cl_must_pass(p_mkdir("new_workdir", 0777));
}

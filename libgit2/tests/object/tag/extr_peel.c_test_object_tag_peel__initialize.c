
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_fixture_sandbox (char*) ;
 int cl_git_pass (int ) ;
 int git_repository_open (int *,char*) ;
 int repo ;

void test_object_tag_peel__initialize(void)
{
 cl_fixture_sandbox("testrepo.git");
 cl_git_pass(git_repository_open(&repo, "testrepo.git"));
}

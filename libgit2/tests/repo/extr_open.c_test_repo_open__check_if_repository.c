
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_fixture_cleanup (char*) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int git_repository_open_ext (int *,char*,int ,int *) ;

void test_repo_open__check_if_repository(void)
{
 cl_git_sandbox_init("empty_standard_repo");


 cl_git_pass(git_repository_open_ext(((void*)0), "empty_standard_repo", 0, ((void*)0)));
 cl_git_fail(git_repository_open_ext(((void*)0), "repo_does_not_exist", 0, ((void*)0)));

 cl_fixture_cleanup("empty_standard_repo");
}

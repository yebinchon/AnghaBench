
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_repository_is_shallow (int ) ;

void test_repo_shallow__empty_shallow_file(void)
{
 g_repo = cl_git_sandbox_init("testrepo.git");
 cl_git_mkfile("testrepo.git/shallow", "");
 cl_assert_equal_i(0, git_repository_is_shallow(g_repo));
}

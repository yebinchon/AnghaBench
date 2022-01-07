
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_i (int,int) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_ignore_path_is_ignored (int*,int ,char*) ;

void test_ignore_status__negate_exact_previous(void)
{
 int ignored;

 g_repo = cl_git_sandbox_init("empty_standard_repo");

 cl_git_mkfile("empty_standard_repo/.gitignore", "*.com\ntags\n!tags/\n.buildpath");
 cl_git_mkfile("empty_standard_repo/.buildpath", "");
 cl_git_pass(git_ignore_path_is_ignored(&ignored, g_repo, ".buildpath"));
 cl_assert_equal_i(1, ignored);
}

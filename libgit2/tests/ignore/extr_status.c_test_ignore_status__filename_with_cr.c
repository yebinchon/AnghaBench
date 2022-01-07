
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

void test_ignore_status__filename_with_cr(void)
{
 int ignored;

 g_repo = cl_git_sandbox_init("empty_standard_repo");
 cl_git_mkfile("empty_standard_repo/.gitignore", "Icon\r\r\n");

 cl_git_pass(git_ignore_path_is_ignored(&ignored, g_repo, "Icon\r"));
 cl_assert_equal_i(1, ignored);

 cl_git_mkfile("empty_standard_repo/.gitignore", "Ico\rn\n");
 cl_git_pass(git_ignore_path_is_ignored(&ignored, g_repo, "Ico\rn"));
 cl_assert_equal_i(1, ignored);

 cl_git_mkfile("empty_standard_repo/.gitignore", "Ico\rn\r\n");
 cl_git_pass(git_ignore_path_is_ignored(&ignored, g_repo, "Ico\rn"));
 cl_assert_equal_i(1, ignored);
 cl_git_pass(git_ignore_path_is_ignored(&ignored, g_repo, "Ico\rn\r"));
 cl_assert_equal_i(0, ignored);

 cl_git_mkfile("empty_standard_repo/.gitignore", "Ico\rn\r\r\n");
 cl_git_pass(git_ignore_path_is_ignored(&ignored, g_repo, "Ico\rn\r"));
 cl_assert_equal_i(1, ignored);
 cl_git_pass(git_ignore_path_is_ignored(&ignored, g_repo, "Icon\r"));
 cl_assert_equal_i(0, ignored);

 cl_git_mkfile("empty_standard_repo/.gitignore", "Icon\r\n");
 cl_git_pass(git_ignore_path_is_ignored(&ignored, g_repo, "Icon\r"));
 cl_assert_equal_i(0, ignored);
 cl_git_pass(git_ignore_path_is_ignored(&ignored, g_repo, "Icon"));
 cl_assert_equal_i(1, ignored);
}

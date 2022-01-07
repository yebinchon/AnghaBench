
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 unsigned int GIT_STATUS_IGNORED ;
 unsigned int GIT_STATUS_WT_NEW ;
 int cl_assert (int) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_futils_mkdir_r (char*,int const) ;
 int git_status_file (unsigned int*,int ,char*) ;

void test_ignore_status__ignore_pattern_contains_space(void)
{
 unsigned int flags;
 const mode_t mode = 0777;

 g_repo = cl_git_sandbox_init("empty_standard_repo");
 cl_git_rewritefile("empty_standard_repo/.gitignore", "foo bar.txt\n");

 cl_git_mkfile(
  "empty_standard_repo/foo bar.txt", "I'm going to be ignored!");

 cl_git_pass(git_status_file(&flags, g_repo, "foo bar.txt"));
 cl_assert(flags == GIT_STATUS_IGNORED);

 cl_git_pass(git_futils_mkdir_r("empty_standard_repo/foo", mode));
 cl_git_mkfile("empty_standard_repo/foo/look-ma.txt", "I'm not going to be ignored!");

 cl_git_pass(git_status_file(&flags, g_repo, "foo/look-ma.txt"));
 cl_assert(flags == GIT_STATUS_WT_NEW);
}

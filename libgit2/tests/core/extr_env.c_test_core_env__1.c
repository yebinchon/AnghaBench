
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_setenv (char*,char*) ;
 int git_buf_dispose (int *) ;
 int git_sysdir_find_global_file (int *,char*) ;
 int git_sysdir_find_system_file (int *,char*) ;
 int set_global_search_path_from_env () ;
 int set_system_search_path_from_env () ;

void test_core_env__1(void)
{
 git_buf path = GIT_BUF_INIT;

 cl_assert_equal_i(
  GIT_ENOTFOUND, git_sysdir_find_global_file(&path, "nonexistentfile"));

 cl_git_pass(cl_setenv("HOME", "doesnotexist"));




 set_global_search_path_from_env();

 cl_assert_equal_i(
  GIT_ENOTFOUND, git_sysdir_find_global_file(&path, "nonexistentfile"));

 cl_git_pass(cl_setenv("HOME", ((void*)0)));




 set_global_search_path_from_env();
 set_system_search_path_from_env();

 cl_assert_equal_i(
  GIT_ENOTFOUND, git_sysdir_find_global_file(&path, "nonexistentfile"));

 cl_assert_equal_i(
  GIT_ENOTFOUND, git_sysdir_find_system_file(&path, "nonexistentfile"));
 git_buf_dispose(&path);
}

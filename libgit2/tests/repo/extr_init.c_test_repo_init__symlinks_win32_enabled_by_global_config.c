
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int GIT_CONFIG_LEVEL_LOCAL ;
 int GIT_ENOTFOUND ;
 int _repo ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_skip () ;
 int create_tmp_global_config (char*,char*,char*) ;
 int git_config_free (int *) ;
 int git_config_get_bool (int*,int *,char*) ;
 int git_config_open_level (int **,int *,int ) ;
 int git_path_supports_symlinks (char*) ;
 int git_repository_config (int **,int ) ;
 int git_repository_init (int *,char*,int) ;

void test_repo_init__symlinks_win32_enabled_by_global_config(void)
{

 cl_skip();
}

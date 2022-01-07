
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int GIT_CONFIG_LEVEL_SYSTEM ;
 int cl_assert_equal_i (int ,int) ;
 int cl_git_pass (int ) ;
 int count_cfg_entries_and_compare_levels ;
 int git_config_add_file_ondisk (int *,char*,int ,int *,int ) ;
 int git_config_foreach (int *,int ,int*) ;
 int git_config_free (int *) ;
 int git_config_new (int **) ;

void test_config_read__parent_dir_is_file(void)
{
 git_config *cfg;
 int count;

 cl_git_pass(git_config_new(&cfg));




 cl_git_pass(git_config_add_file_ondisk(cfg, "/dev/null/.gitconfig",
  GIT_CONFIG_LEVEL_SYSTEM, ((void*)0), 0));

 count = 0;
 cl_git_pass(git_config_foreach(cfg, count_cfg_entries_and_compare_levels, &count));
 cl_assert_equal_i(0, count);

 git_config_free(cfg);
}

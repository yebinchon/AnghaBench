
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int cl_assert_equal_i (int,int) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int count_cfg_entries ;
 int git_config_foreach_match (int *,char*,int ,int*) ;
 int git_config_free (int *) ;
 int git_config_open_ondisk (int **,int ) ;

void test_config_read__foreach_match(void)
{
 git_config *cfg;
 int count;

 cl_git_pass(git_config_open_ondisk(&cfg, cl_fixture("config/config9")));

 count = 0;
 cl_git_pass(
  git_config_foreach_match(cfg, "core.*", count_cfg_entries, &count));
 cl_assert_equal_i(3, count);

 count = 0;
 cl_git_pass(
  git_config_foreach_match(cfg, "remote\\.ab.*", count_cfg_entries, &count));
 cl_assert_equal_i(2, count);

 count = 0;
 cl_git_pass(
  git_config_foreach_match(cfg, ".*url$", count_cfg_entries, &count));
 cl_assert_equal_i(2, count);

 count = 0;
 cl_git_pass(
  git_config_foreach_match(cfg, ".*dummy.*", count_cfg_entries, &count));
 cl_assert_equal_i(2, count);

 count = 0;
 cl_git_pass(
  git_config_foreach_match(cfg, ".*nomatch.*", count_cfg_entries, &count));
 cl_assert_equal_i(0, count);

 git_config_free(cfg);
}

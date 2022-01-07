
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int TEST_CONFIG ;
 int buf ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_get_string_buf (int *,int *,char*) ;
 int git_config_open_ondisk (int **,int ) ;
 int git_path_exists (int ) ;

void test_config_stress__dont_break_on_invalid_input(void)
{
 git_config *config;

 cl_assert(git_path_exists(TEST_CONFIG));
 cl_git_pass(git_config_open_ondisk(&config, TEST_CONFIG));

 cl_git_pass(git_config_get_string_buf(&buf, config, "color.ui"));
 cl_git_pass(git_config_get_string_buf(&buf, config, "core.editor"));

 git_config_free(config);
}

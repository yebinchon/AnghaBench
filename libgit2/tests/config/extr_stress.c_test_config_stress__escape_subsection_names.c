
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int TEST_CONFIG ;
 int assert_config_value (int *,char*,char*) ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_open_ondisk (int **,int ) ;
 int git_config_set_string (int *,char*,char*) ;
 int git_path_exists (char*) ;

void test_config_stress__escape_subsection_names(void)
{
 git_config *config;

 cl_assert(git_path_exists("git-test-config"));
 cl_git_pass(git_config_open_ondisk(&config, TEST_CONFIG));

 cl_git_pass(git_config_set_string(config, "some.sec\\tion.other", "foo"));
 git_config_free(config);

 cl_git_pass(git_config_open_ondisk(&config, TEST_CONFIG));

 assert_config_value(config, "some.sec\\tion.other", "foo");

 git_config_free(config);
}

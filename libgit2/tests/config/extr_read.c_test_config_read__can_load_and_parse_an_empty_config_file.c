
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int GIT_ENOTFOUND ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_set_cleanup (int *,int *) ;
 int clean_test_config ;
 int git_config_free (int *) ;
 int git_config_get_int32 (int*,int *,char*) ;
 int git_config_open_ondisk (int **,char*) ;

void test_config_read__can_load_and_parse_an_empty_config_file(void)
{
 git_config *cfg;
 int i;

 cl_set_cleanup(&clean_test_config, ((void*)0));
 cl_git_mkfile("./testconfig", "");
 cl_git_pass(git_config_open_ondisk(&cfg, "./testconfig"));
 cl_assert_equal_i(GIT_ENOTFOUND, git_config_get_int32(&i, cfg, "nope.neither"));

 git_config_free(cfg);
}

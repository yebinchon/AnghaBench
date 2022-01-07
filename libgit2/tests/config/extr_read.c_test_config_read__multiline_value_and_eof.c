
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int buf ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_set_cleanup (int *,int *) ;
 int clean_test_config ;
 int git_buf_cstr (int *) ;
 int git_config_free (int *) ;
 int git_config_get_string_buf (int *,int *,char*) ;
 int git_config_open_ondisk (int **,char*) ;

void test_config_read__multiline_value_and_eof(void)
{
 git_config *cfg;

 cl_set_cleanup(&clean_test_config, ((void*)0));
 cl_git_mkfile("./testconfig", "[header]\n  key1 = foo\\\n");
 cl_git_pass(git_config_open_ondisk(&cfg, "./testconfig"));

 cl_git_pass(git_config_get_string_buf(&buf, cfg, "header.key1"));
 cl_assert_equal_s("foo", git_buf_cstr(&buf));

 git_config_free(cfg);
}

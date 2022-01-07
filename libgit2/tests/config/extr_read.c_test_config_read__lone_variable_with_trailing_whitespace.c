
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int cl_assert_equal_b (int,int) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_set_cleanup (int *,int *) ;
 int clean_test_config ;
 int git_config_free (int *) ;
 int git_config_get_bool (int*,int *,char*) ;
 int git_config_open_ondisk (int **,char*) ;

void test_config_read__lone_variable_with_trailing_whitespace(void)
{
 git_config *cfg;
 int b;

 cl_set_cleanup(&clean_test_config, ((void*)0));
 cl_git_mkfile("./testconfig", "[foo]\n    lonevariable   \n");
 cl_git_pass(git_config_open_ondisk(&cfg, "./testconfig"));

 cl_git_pass(git_config_get_bool(&b, cfg, "foo.lonevariable"));
 cl_assert_equal_b(1, b);

 git_config_free(cfg);
}

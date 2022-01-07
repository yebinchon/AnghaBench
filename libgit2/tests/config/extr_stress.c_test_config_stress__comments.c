
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int assert_config_value (int *,char*,char*) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_open_ondisk (int **,int ) ;

void test_config_stress__comments(void)
{
 git_config *config;

 cl_git_pass(git_config_open_ondisk(&config, cl_fixture("config/config12")));

 assert_config_value(config, "some.section.test2", "hello");
 assert_config_value(config, "some.section.test3", "welcome");
 assert_config_value(config, "some.section.other", "hello! \" ; ; ; ");
 assert_config_value(config, "some.section.other2", "cool! \" # # # ");
 assert_config_value(config, "some.section.multi", "hi, this is a ; multiline comment # with ;\n special chars and other stuff !@#");
 assert_config_value(config, "some.section.multi2", "good, this is a ; multiline comment # with ;\n special chars and other stuff !@#");
 assert_config_value(config, "some.section.back", "this is \ba phrase");

 git_config_free(config);
}

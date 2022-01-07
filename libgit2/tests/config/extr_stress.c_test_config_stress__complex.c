
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int assert_config_value (int *,char*,char*) ;
 int cl_git_mkfile (char const*,char*) ;
 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_open_ondisk (int **,char const*) ;

void test_config_stress__complex(void)
{
 git_config *config;
 const char *path = "./config-immediate-multiline";

 cl_git_mkfile(path, "[imm]\n multi = \"\\\nfoo\"");
 cl_git_pass(git_config_open_ondisk(&config, path));
 assert_config_value(config, "imm.multi", "foo");

 git_config_free(config);
}

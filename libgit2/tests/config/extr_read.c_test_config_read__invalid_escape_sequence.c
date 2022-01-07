
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int cl_git_fail (int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_set_cleanup (int *,int *) ;
 int clean_test_config ;
 int git_config_free (int *) ;
 int git_config_open_ondisk (int **,char*) ;

void test_config_read__invalid_escape_sequence(void)
{
 git_config *cfg;

 cl_set_cleanup(&clean_test_config, ((void*)0));
 cl_git_mkfile("./testconfig", "[header]\n  key1 = \\\\\\;\n  key2 = value2\n");
 cl_git_fail(git_config_open_ondisk(&cfg, "./testconfig"));

 git_config_free(cfg);
}

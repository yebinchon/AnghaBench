
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int cl_assert (int) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_get_bool (int*,int *,char*) ;
 int git_config_open_ondisk (int **,int ) ;

void test_config_read__blank_lines(void)
{
 git_config *cfg;
 int i;

 cl_git_pass(git_config_open_ondisk(&cfg, cl_fixture("config/config6")));

 cl_git_pass(git_config_get_bool(&i, cfg, "valid.subsection.something"));
 cl_assert(i == 1);

 cl_git_pass(git_config_get_bool(&i, cfg, "something.else.something"));
 cl_assert(i == 0);

 git_config_free(cfg);
}

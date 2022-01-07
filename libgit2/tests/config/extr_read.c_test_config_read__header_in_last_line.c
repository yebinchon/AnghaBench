
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_open_ondisk (int **,int ) ;

void test_config_read__header_in_last_line(void)
{
 git_config *cfg;

 cl_git_pass(git_config_open_ondisk(&cfg, cl_fixture("config/config10")));
 git_config_free(cfg);
}

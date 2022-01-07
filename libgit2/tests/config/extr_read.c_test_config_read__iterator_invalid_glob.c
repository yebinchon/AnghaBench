
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config_iterator ;
typedef int git_config ;


 int cl_fixture (char*) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_iterator_glob_new (int **,int *,char*) ;
 int git_config_open_ondisk (int **,int ) ;

void test_config_read__iterator_invalid_glob(void)
{
 git_config *cfg;
 git_config_iterator *iter;

 cl_git_pass(git_config_open_ondisk(&cfg, cl_fixture("config/config9")));

 cl_git_fail(git_config_iterator_glob_new(&iter, cfg, "*"));

 git_config_free(cfg);
}

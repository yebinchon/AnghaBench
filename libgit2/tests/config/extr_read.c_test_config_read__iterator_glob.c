
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int check_glob_iter (int *,char*,int) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_open_ondisk (int **,int ) ;

void test_config_read__iterator_glob(void)
{
 git_config *cfg;

 cl_git_pass(git_config_open_ondisk(&cfg, cl_fixture("config/config9")));

 check_glob_iter(cfg, "core.*", 3);
 check_glob_iter(cfg, "remote\\.ab.*", 2);
 check_glob_iter(cfg, ".*url$", 2);
 check_glob_iter(cfg, ".*dummy.*", 2);
 check_glob_iter(cfg, ".*nomatch.*", 0);

 git_config_free(cfg);
}

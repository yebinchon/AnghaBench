
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int GIT_CONFIG_LEVEL_APP ;
 int GIT_CONFIG_LEVEL_GLOBAL ;
 int GIT_CONFIG_LEVEL_LOCAL ;
 int GIT_CONFIG_LEVEL_SYSTEM ;
 int check_get_multivar (int *,int) ;
 int check_get_multivar_foreach (int *,int,int) ;
 int cl_git_pass (int ) ;
 int git_config_add_file_ondisk (int *,char*,int ,int *,int) ;
 int git_config_free (int *) ;
 int git_config_open_ondisk (int **,char*) ;

void test_config_multivar__get(void)
{
 git_config *cfg;

 cl_git_pass(git_config_open_ondisk(&cfg, "config/config11"));
 check_get_multivar_foreach(cfg, 2, 1);


 cl_git_pass(git_config_add_file_ondisk(cfg, "config/config9", GIT_CONFIG_LEVEL_SYSTEM, ((void*)0), 1));
 check_get_multivar_foreach(cfg, 3, 2);


 cl_git_pass(git_config_add_file_ondisk(cfg, "config/config0", GIT_CONFIG_LEVEL_GLOBAL, ((void*)0), 1));
 check_get_multivar_foreach(cfg, 3, 2);


 cl_git_pass(git_config_add_file_ondisk(cfg, "config/config1", GIT_CONFIG_LEVEL_APP, ((void*)0), 1));
 check_get_multivar_foreach(cfg, 3, 2);


 cl_git_pass(git_config_add_file_ondisk(cfg, "config/config2", GIT_CONFIG_LEVEL_LOCAL, ((void*)0), 1));
 check_get_multivar_foreach(cfg, 1, 1);


 cl_git_pass(git_config_add_file_ondisk(cfg, "config/config3", GIT_CONFIG_LEVEL_SYSTEM, ((void*)0), 1));
 check_get_multivar_foreach(cfg, 0, 0);


 cl_git_pass(git_config_add_file_ondisk(cfg, "config/config11", GIT_CONFIG_LEVEL_SYSTEM, ((void*)0), 1));
 check_get_multivar_foreach(cfg, 2, 1);

 check_get_multivar(cfg, 2);

 git_config_free(cfg);
}

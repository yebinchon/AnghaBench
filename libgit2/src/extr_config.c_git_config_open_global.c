
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int GIT_CONFIG_LEVEL_GLOBAL ;
 int GIT_CONFIG_LEVEL_XDG ;
 int git_config_open_level (int **,int *,int ) ;

int git_config_open_global(git_config **cfg_out, git_config *cfg)
{
 if (!git_config_open_level(cfg_out, cfg, GIT_CONFIG_LEVEL_XDG))
  return 0;

 return git_config_open_level(cfg_out, cfg, GIT_CONFIG_LEVEL_GLOBAL);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int GIT_CONFIG_LEVEL_LOCAL ;
 int git_config_add_file_ondisk (int *,char const*,int ,int *,int ) ;
 int git_config_free (int *) ;
 scalar_t__ git_config_new (int **) ;

int git_config_open_ondisk(git_config **out, const char *path)
{
 int error;
 git_config *config;

 *out = ((void*)0);

 if (git_config_new(&config) < 0)
  return -1;

 if ((error = git_config_add_file_ondisk(config, path, GIT_CONFIG_LEVEL_LOCAL, ((void*)0), 0)) < 0)
  git_config_free(config);
 else
  *out = config;

 return error;
}

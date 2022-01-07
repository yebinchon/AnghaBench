
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_config ;


 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 scalar_t__ git_config_get_bool (int*,int *,char const*) ;
 int git_error_clear () ;
 int git_repository_config (int **,int *) ;

int cl_repo_get_bool(git_repository *repo, const char *cfg)
{
 int val = 0;
 git_config *config;
 cl_git_pass(git_repository_config(&config, repo));
 if (git_config_get_bool(&val, config, cfg) < 0)
  git_error_clear();
 git_config_free(config);
 return val;
}

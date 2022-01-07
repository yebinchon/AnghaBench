
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_config ;


 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_set_bool (int *,char const*,int) ;
 int git_repository_config (int **,int *) ;

void cl_repo_set_bool(git_repository *repo, const char *cfg, int value)
{
 git_config *config;
 cl_git_pass(git_repository_config(&config, repo));
 cl_git_pass(git_config_set_bool(config, cfg, value != 0));
 git_config_free(config);
}

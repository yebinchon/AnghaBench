
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_config ;


 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_set_int32 (int *,char const*,int) ;
 int git_repository_config (int **,int *) ;

__attribute__((used)) static void set_config_int(git_repository *repo, const char *name, int value)
{
 git_config *cfg;

 cl_git_pass(git_repository_config(&cfg, repo));
 cl_git_pass(git_config_set_int32(cfg, name, value));
 git_config_free(cfg);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_config ;


 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int count_config_entries_cb ;
 int git_config_foreach_match (int *,char const*,int ,int*) ;
 int git_config_free (int *) ;
 int git_repository_config (int **,int *) ;

int count_config_entries_match(git_repository *repo, const char *pattern)
{
 git_config *config;
 int how_many = 0;

 cl_git_pass(git_repository_config(&config, repo));

 cl_assert_equal_i(0, git_config_foreach_match(
  config, pattern, count_config_entries_cb, &how_many));

 git_config_free(config);

 return how_many;
}

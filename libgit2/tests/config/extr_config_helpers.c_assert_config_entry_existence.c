
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_config_entry ;
typedef int git_config ;


 int GIT_ENOTFOUND ;
 int cl_assert_equal_i (int ,int) ;
 int cl_git_pass (int) ;
 int git_config_entry_free (int *) ;
 int git_config_get_entry (int **,int *,char const*) ;
 int git_repository_config__weakptr (int **,int *) ;

void assert_config_entry_existence(
 git_repository *repo,
 const char *name,
 bool is_supposed_to_exist)
{
 git_config *config;
 git_config_entry *entry = ((void*)0);
 int result;

 cl_git_pass(git_repository_config__weakptr(&config, repo));

 result = git_config_get_entry(&entry, config, name);
 git_config_entry_free(entry);

 if (is_supposed_to_exist)
  cl_git_pass(result);
 else
  cl_assert_equal_i(GIT_ENOTFOUND, result);
}

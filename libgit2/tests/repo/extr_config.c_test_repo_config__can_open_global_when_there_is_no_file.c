
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_config ;
struct TYPE_2__ {int ptr; } ;


 int GIT_CONFIG_LEVEL_GLOBAL ;
 int GIT_CONFIG_LEVEL_SYSTEM ;
 int GIT_CONFIG_LEVEL_XDG ;
 int GIT_OPT_SET_SEARCH_PATH ;
 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_open_level (int **,int *,int ) ;
 int git_config_set_string (int *,char*,char*) ;
 int git_libgit2_opts (int ,int ,int ) ;
 int git_repository_config (int **,int *) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,char*) ;
 TYPE_1__ path ;

void test_repo_config__can_open_global_when_there_is_no_file(void)
{
 git_repository *repo;
 git_config *config, *global;

 cl_git_pass(git_libgit2_opts(
  GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL, path.ptr));
 cl_git_pass(git_libgit2_opts(
  GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_SYSTEM, path.ptr));
 cl_git_pass(git_libgit2_opts(
  GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_XDG, path.ptr));

 cl_git_pass(git_repository_open(&repo, "empty_standard_repo"));
 cl_git_pass(git_repository_config(&config, repo));
 cl_git_pass(git_config_open_level(
  &global, config, GIT_CONFIG_LEVEL_GLOBAL));

 cl_git_pass(git_config_set_string(global, "test.set", "42"));

 git_config_free(global);
 git_config_free(config);
 git_repository_free(repo);
}

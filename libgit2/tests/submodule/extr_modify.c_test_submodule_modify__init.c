
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int GIT_ENOTFOUND ;
 int cl_assert (int) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int delete_one_config ;
 int g_repo ;
 scalar_t__ git__suffixcmp (char const*,char*) ;
 int git_config_foreach_match (int *,char*,int ,int *) ;
 int git_config_free (int *) ;
 int git_config_get_string (char const**,int *,char*) ;
 int git_repository_config (int **,int ) ;
 int git_repository_config_snapshot (int **,int ) ;
 int git_submodule_foreach (int ,int ,int *) ;
 int init_one_submodule ;

void test_submodule_modify__init(void)
{
 git_config *cfg;
 const char *str;


 cl_git_pass(git_repository_config(&cfg, g_repo));
 cl_git_pass(
  git_config_foreach_match(cfg, "submodule\\..*", delete_one_config, cfg));
 git_config_free(cfg);


 cl_git_pass(git_repository_config_snapshot(&cfg, g_repo));
 cl_git_fail_with(GIT_ENOTFOUND, git_config_get_string(&str, cfg, "submodule.sm_unchanged.url"));
 cl_git_fail_with(GIT_ENOTFOUND, git_config_get_string(&str, cfg, "submodule.sm_changed_head.url"));
 cl_git_fail_with(GIT_ENOTFOUND, git_config_get_string(&str, cfg, "submodule.sm_added_and_uncommited.url"));
 git_config_free(cfg);


 cl_git_pass(git_submodule_foreach(g_repo, init_one_submodule, ((void*)0)));


 cl_git_pass(git_repository_config_snapshot(&cfg, g_repo));
 cl_git_pass(git_config_get_string(&str, cfg, "submodule.sm_unchanged.url"));
 cl_assert(git__suffixcmp(str, "/submod2_target") == 0);
 cl_git_pass(git_config_get_string(&str, cfg, "submodule.sm_changed_head.url"));
 cl_assert(git__suffixcmp(str, "/submod2_target") == 0);
 cl_git_pass(git_config_get_string(&str, cfg, "submodule.sm_added_and_uncommited.url"));
 cl_assert(git__suffixcmp(str, "/submod2_target") == 0);
 git_config_free(cfg);
}

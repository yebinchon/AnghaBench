
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int TEST_REPO_PATH ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (int ) ;
 int git_config_free (int *) ;
 int git_config_set_string (int *,char*,char*) ;
 int git_repository_config (int **,int ) ;
 int repo ;

void test_merge_workdir_renames__initialize(void)
{
 git_config *cfg;

 repo = cl_git_sandbox_init(TEST_REPO_PATH);


 cl_git_pass(git_repository_config(&cfg, repo));
 cl_git_pass(git_config_set_string(cfg, "merge.conflictstyle", "merge"));
 git_config_free(cfg);
}

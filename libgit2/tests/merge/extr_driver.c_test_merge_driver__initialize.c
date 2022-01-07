
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int AUTOMERGEABLE_IDSTR ;
 int TEST_REPO_PATH ;
 int automergeable_id ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (int ) ;
 int git_config_free (int *) ;
 int git_config_set_bool (int *,char*,int) ;
 int git_config_set_string (int *,char*,char*) ;
 int git_oid_fromstr (int *,int ) ;
 int git_repository_config (int **,int ) ;
 int git_repository_index (int *,int ) ;
 int repo ;
 int repo_index ;
 int test_drivers_register () ;

void test_merge_driver__initialize(void)
{
    git_config *cfg;

    repo = cl_git_sandbox_init(TEST_REPO_PATH);
    git_repository_index(&repo_index, repo);

 git_oid_fromstr(&automergeable_id, AUTOMERGEABLE_IDSTR);


    cl_git_pass(git_repository_config(&cfg, repo));

    cl_git_pass(git_config_set_string(cfg, "merge.conflictstyle", "merge"));
    cl_git_pass(git_config_set_bool(cfg, "core.autocrlf", 0));

 test_drivers_register();

    git_config_free(cfg);
}

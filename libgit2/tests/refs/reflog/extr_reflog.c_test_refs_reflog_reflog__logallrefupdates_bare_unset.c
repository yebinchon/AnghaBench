
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int assert_no_reflog_update () ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_config_delete_entry (int *,char*) ;
 int git_config_free (int *) ;
 int git_repository_config (int **,int ) ;

void test_refs_reflog_reflog__logallrefupdates_bare_unset(void)
{
 git_config *config;

 cl_git_pass(git_repository_config(&config, g_repo));
 cl_git_pass(git_config_delete_entry(config, "core.logallrefupdates"));
 git_config_free(config);

 assert_no_reflog_update();
}

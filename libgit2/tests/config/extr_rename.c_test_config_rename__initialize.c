
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_config ;
 int g_repo ;
 int git_repository_config (int *,int ) ;

void test_config_rename__initialize(void)
{
    g_repo = cl_git_sandbox_init("testrepo.git");
 cl_git_pass(git_repository_config(&g_config, g_repo));
}

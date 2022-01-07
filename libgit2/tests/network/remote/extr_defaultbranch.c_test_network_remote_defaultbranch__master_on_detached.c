
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_default_branch (char*) ;
 int cl_git_pass (int ) ;
 int g_repo_a ;
 int git_repository_detach_head (int ) ;

void test_network_remote_defaultbranch__master_on_detached(void)
{
 cl_git_pass(git_repository_detach_head(g_repo_a));
 assert_default_branch("refs/heads/master");
}

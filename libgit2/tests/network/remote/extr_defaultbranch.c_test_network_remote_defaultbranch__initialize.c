
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_remote ;
 int g_repo_a ;
 int g_repo_b ;
 int git_remote_create (int *,int ,char*,int ) ;
 int git_repository_init (int *,char*,int) ;
 int git_repository_path (int ) ;

void test_network_remote_defaultbranch__initialize(void)
{
 g_repo_a = cl_git_sandbox_init("testrepo.git");
 cl_git_pass(git_repository_init(&g_repo_b, "repo-b.git", 1));
 cl_git_pass(git_remote_create(&g_remote, g_repo_b, "origin", git_repository_path(g_repo_a)));
}

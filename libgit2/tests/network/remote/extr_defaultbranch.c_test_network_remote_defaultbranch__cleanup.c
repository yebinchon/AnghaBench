
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_fixture_cleanup (char*) ;
 int cl_git_sandbox_cleanup () ;
 int g_remote ;
 int g_repo_b ;
 int git_remote_free (int ) ;
 int git_repository_free (int ) ;

void test_network_remote_defaultbranch__cleanup(void)
{
 git_remote_free(g_remote);
 git_repository_free(g_repo_b);

 cl_git_sandbox_cleanup();
 cl_fixture_cleanup("repo-b.git");
}

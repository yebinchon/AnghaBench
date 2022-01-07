
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule ;


 int cl_git_fail (int ) ;
 int cl_git_sandbox_cleanup () ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_submodule_lookup (int **,int ,char*) ;

void test_submodule_lookup__lookup_in_bare_repository_fails(void)
{
 git_submodule *sm;

 cl_git_sandbox_cleanup();
 g_repo = cl_git_sandbox_init("submodules.git");

 cl_git_fail(git_submodule_lookup(&sm, g_repo, "nonexisting"));
}

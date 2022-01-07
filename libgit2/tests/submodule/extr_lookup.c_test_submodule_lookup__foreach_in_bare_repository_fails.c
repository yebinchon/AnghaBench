
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_fail (int ) ;
 int cl_git_sandbox_cleanup () ;
 int cl_git_sandbox_init (char*) ;
 int foreach_cb ;
 int g_repo ;
 int git_submodule_foreach (int ,int ,int *) ;

void test_submodule_lookup__foreach_in_bare_repository_fails(void)
{
 cl_git_sandbox_cleanup();
 g_repo = cl_git_sandbox_init("submodules.git");

 cl_git_fail(git_submodule_foreach(g_repo, foreach_cb, ((void*)0)));
}

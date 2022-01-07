
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_sandbox_cleanup () ;
 int * g_child ;
 int * g_module ;
 int * g_parent ;
 int git_repository_free (int *) ;
 int git_submodule_free (int *) ;

void test_submodule_open__cleanup(void)
{
 git_submodule_free(g_module);
 git_repository_free(g_child);
 cl_git_sandbox_cleanup();
 g_parent = ((void*)0);
 g_child = ((void*)0);
 g_module = ((void*)0);
}

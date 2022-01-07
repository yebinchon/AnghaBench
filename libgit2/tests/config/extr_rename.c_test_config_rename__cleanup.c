
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_sandbox_cleanup () ;
 int * g_config ;
 int * g_repo ;
 int git_config_free (int *) ;

void test_config_rename__cleanup(void)
{
 git_config_free(g_config);
 g_config = ((void*)0);

 cl_git_sandbox_cleanup();
 g_repo = ((void*)0);
}

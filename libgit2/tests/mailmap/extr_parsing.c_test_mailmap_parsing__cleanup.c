
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_sandbox_cleanup () ;
 int g_config ;
 int g_mailmap ;
 int git_config_free (int ) ;
 int git_mailmap_free (int ) ;

void test_mailmap_parsing__cleanup(void)
{
 git_mailmap_free(g_mailmap);
 git_config_free(g_config);
 cl_git_sandbox_cleanup();
}

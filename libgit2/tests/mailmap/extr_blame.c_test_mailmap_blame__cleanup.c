
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_sandbox_cleanup () ;
 int g_blame ;
 int git_blame_free (int ) ;

void test_mailmap_blame__cleanup(void)
{
 git_blame_free(g_blame);
 cl_git_sandbox_cleanup();
}

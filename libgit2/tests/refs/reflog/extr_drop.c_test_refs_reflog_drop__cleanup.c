
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_sandbox_cleanup () ;
 int * g_reflog ;
 int git_reflog_free (int *) ;

void test_refs_reflog_drop__cleanup(void)
{
 git_reflog_free(g_reflog);
 g_reflog = ((void*)0);

 cl_git_sandbox_cleanup();
}

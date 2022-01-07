
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_sandbox_cleanup () ;
 int g_index ;
 int git_index_free (int ) ;

void test_checkout_conflict__cleanup(void)
{
 git_index_free(g_index);
 cl_git_sandbox_cleanup();
}

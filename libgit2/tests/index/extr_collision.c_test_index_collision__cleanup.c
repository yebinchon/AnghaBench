
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_sandbox_cleanup () ;
 int g_index ;
 int g_odb ;
 int git_index_free (int ) ;
 int git_odb_free (int ) ;

void test_index_collision__cleanup(void)
{
 git_index_free(g_index);
 git_odb_free(g_odb);
 cl_git_sandbox_cleanup();
}

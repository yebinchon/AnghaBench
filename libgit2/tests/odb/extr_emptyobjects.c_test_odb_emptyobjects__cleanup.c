
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_sandbox_cleanup () ;
 int g_odb ;
 int git_odb_free (int ) ;

void test_odb_emptyobjects__cleanup(void)
{
 git_odb_free(g_odb);
 cl_git_sandbox_cleanup();
}

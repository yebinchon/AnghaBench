
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int * g_table ;
 int git_strmap_new (int **) ;

void test_core_strmap__initialize(void)
{
 cl_git_pass(git_strmap_new(&g_table));
 cl_assert(g_table != ((void*)0));
}

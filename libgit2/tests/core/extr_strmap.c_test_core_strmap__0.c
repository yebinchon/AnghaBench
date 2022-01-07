
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int) ;
 int g_table ;
 scalar_t__ git_strmap_size (int ) ;

void test_core_strmap__0(void)
{
 cl_assert(git_strmap_size(g_table) == 0);
}

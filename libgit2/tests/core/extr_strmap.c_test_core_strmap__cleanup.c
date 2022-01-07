
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_table ;
 int git_strmap_free (int ) ;

void test_core_strmap__cleanup(void)
{
 git_strmap_free(g_table);
}

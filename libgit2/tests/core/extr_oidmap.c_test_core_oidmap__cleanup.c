
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_map ;
 int git_oidmap_free (int ) ;

void test_core_oidmap__cleanup(void)
{
 git_oidmap_free(g_map);
}

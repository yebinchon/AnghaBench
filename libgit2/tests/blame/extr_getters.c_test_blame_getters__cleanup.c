
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_blame ;
 int git_blame_free (int ) ;

void test_blame_getters__cleanup(void)
{
 git_blame_free(g_blame);
}

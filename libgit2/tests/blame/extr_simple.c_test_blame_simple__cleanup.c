
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_blame ;
 int g_repo ;
 int git_blame_free (int ) ;
 int git_repository_free (int ) ;

void test_blame_simple__cleanup(void)
{
 git_blame_free(g_blame);
 git_repository_free(g_repo);
}

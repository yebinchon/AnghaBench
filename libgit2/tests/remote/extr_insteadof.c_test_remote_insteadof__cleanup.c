
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_remote ;
 int g_repo ;
 int git_remote_free (int ) ;
 int git_repository_free (int ) ;

void test_remote_insteadof__cleanup(void)
{
 git_repository_free(g_repo);
 git_remote_free(g_remote);
}

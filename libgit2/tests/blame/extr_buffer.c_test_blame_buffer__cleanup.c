
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_bufferblame ;
 int g_fileblame ;
 int g_repo ;
 int git_blame_free (int ) ;
 int git_repository_free (int ) ;

void test_blame_buffer__cleanup(void)
{
 git_blame_free(g_fileblame);
 git_blame_free(g_bufferblame);
 git_repository_free(g_repo);
}

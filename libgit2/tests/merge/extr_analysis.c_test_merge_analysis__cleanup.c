
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_sandbox_cleanup () ;
 int git_repository_free (int ) ;
 int repo ;

void test_merge_analysis__cleanup(void)
{
 git_repository_free(repo);
 cl_git_sandbox_cleanup();
}

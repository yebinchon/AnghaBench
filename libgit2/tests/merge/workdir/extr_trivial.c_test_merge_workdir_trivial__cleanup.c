
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_sandbox_cleanup () ;
 int git_index_free (int ) ;
 int repo_index ;

void test_merge_workdir_trivial__cleanup(void)
{
 git_index_free(repo_index);
 cl_git_sandbox_cleanup();
}

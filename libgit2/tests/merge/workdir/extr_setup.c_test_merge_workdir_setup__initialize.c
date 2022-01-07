
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_REPO_PATH ;
 int cl_git_sandbox_init (int ) ;
 int git_repository_index (int *,int ) ;
 int repo ;
 int repo_index ;

void test_merge_workdir_setup__initialize(void)
{
 repo = cl_git_sandbox_init(TEST_REPO_PATH);
 git_repository_index(&repo_index, repo);
}

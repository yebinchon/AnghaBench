
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_REPO_PATH ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (int ) ;
 int git_repository_open_ext (int *,int ,int ,int *) ;
 int git_repository_workdir (int ) ;
 int repo ;
 int sandbox ;

void test_merge_analysis__initialize_with_nonbare_repository(void)
{
 sandbox = cl_git_sandbox_init(TEST_REPO_PATH);
 cl_git_pass(git_repository_open_ext(&repo, git_repository_workdir(sandbox),
         0, ((void*)0)));
}

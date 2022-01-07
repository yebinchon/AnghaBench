
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_REPOSITORY_OPEN_BARE ;
 int TEST_REPO_PATH ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (int ) ;
 int git_repository_open_ext (int *,int ,int ,int *) ;
 int git_repository_path (int ) ;
 int repo ;
 int sandbox ;

void test_merge_analysis__initialize_with_bare_repository(void)
{
 sandbox = cl_git_sandbox_init(TEST_REPO_PATH);
 cl_git_pass(git_repository_open_ext(&repo, git_repository_path(sandbox),
         GIT_REPOSITORY_OPEN_BARE, ((void*)0)));
}

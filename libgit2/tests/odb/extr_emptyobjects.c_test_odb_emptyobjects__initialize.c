
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_REPO_PATH ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (int ) ;
 int g_odb ;
 int g_repo ;
 int git_repository_odb (int *,int ) ;

void test_odb_emptyobjects__initialize(void)
{
 g_repo = cl_git_sandbox_init(TEST_REPO_PATH);
 cl_git_pass(git_repository_odb(&g_odb, g_repo));
}

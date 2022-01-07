
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REMOTE_INSTEADOF ;
 int REPO_PATH ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_fixture (int ) ;
 int cl_git_pass (int ) ;
 int g_remote ;
 int g_repo ;
 int git_remote_lookup (int *,int ,int ) ;
 int git_remote_url (int ) ;
 int git_repository_open (int *,int ) ;

void test_remote_insteadof__url_insteadof_applicable(void)
{
 cl_git_pass(git_repository_open(&g_repo, cl_fixture(REPO_PATH)));
 cl_git_pass(git_remote_lookup(&g_remote, g_repo, REMOTE_INSTEADOF));

 cl_assert_equal_s(
     git_remote_url(g_remote),
     "http://github.com/libgit2/libgit2");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMMON_REPO ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_sandbox_init (int ) ;
 int g_repo ;
 int git_repository_is_bare (int ) ;
 int git_repository_is_worktree (int ) ;

void test_worktree_bare__initialize(void)
{
 g_repo = cl_git_sandbox_init(COMMON_REPO);

 cl_assert_equal_i(1, git_repository_is_bare(g_repo));
 cl_assert_equal_i(0, git_repository_is_worktree(g_repo));
}

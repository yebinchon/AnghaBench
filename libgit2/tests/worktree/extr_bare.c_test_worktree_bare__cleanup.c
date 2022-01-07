
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WORKTREE_REPO ;
 int cl_fixture_cleanup (int ) ;
 int cl_git_sandbox_cleanup () ;

void test_worktree_bare__cleanup(void)
{
 cl_fixture_cleanup(WORKTREE_REPO);
 cl_git_sandbox_cleanup();
}

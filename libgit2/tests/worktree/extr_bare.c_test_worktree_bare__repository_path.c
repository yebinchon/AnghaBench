
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_worktree ;
typedef int git_repository ;


 int COMMON_REPO ;
 int WORKTREE_REPO ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_path (int,int ,char*,...) ;
 int * g_repo ;
 int git_repository_commondir (int *) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,int ) ;
 int git_repository_path (int *) ;
 int git_repository_workdir (int *) ;
 int git_worktree_add (int **,int *,char*,int ,int *) ;
 int git_worktree_free (int *) ;
 int git_worktree_path (int *) ;

void test_worktree_bare__repository_path(void)
{
 git_worktree *wt;
 git_repository *wtrepo;

 cl_git_pass(git_worktree_add(&wt, g_repo, "name", WORKTREE_REPO, ((void*)0)));
 cl_assert_equal_s(git_worktree_path(wt), cl_git_sandbox_path(0, WORKTREE_REPO, ((void*)0)));

 cl_git_pass(git_repository_open(&wtrepo, WORKTREE_REPO));
 cl_assert_equal_s(git_repository_path(wtrepo), cl_git_sandbox_path(1, COMMON_REPO, "worktrees", "name", ((void*)0)));

 cl_assert_equal_s(git_repository_commondir(g_repo), git_repository_commondir(wtrepo));
 cl_assert_equal_s(git_repository_workdir(wtrepo), cl_git_sandbox_path(1, WORKTREE_REPO, ((void*)0)));

 git_repository_free(wtrepo);
 git_worktree_free(wt);
}

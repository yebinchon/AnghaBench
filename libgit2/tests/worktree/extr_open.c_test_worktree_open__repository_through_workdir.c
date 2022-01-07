
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int COMMON_REPO ;
 int WORKTREE_REPO ;
 int assert_worktree_valid (int *,int ,int ) ;
 int cl_git_pass (int ) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,int ) ;

void test_worktree_open__repository_through_workdir(void)
{
 git_repository *wt;

 cl_git_pass(git_repository_open(&wt, WORKTREE_REPO));
 assert_worktree_valid(wt, COMMON_REPO, WORKTREE_REPO);

 git_repository_free(wt);
}

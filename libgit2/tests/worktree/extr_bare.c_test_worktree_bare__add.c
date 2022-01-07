
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_worktree ;
struct TYPE_4__ {int count; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_repository ;


 int WORKTREE_REPO ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_repository_free (int *) ;
 int git_repository_is_bare (int *) ;
 int git_repository_is_worktree (int *) ;
 int git_repository_open (int **,int ) ;
 int git_strarray_free (TYPE_1__*) ;
 int git_worktree_add (int **,int ,char*,int ,int *) ;
 int git_worktree_free (int *) ;
 int git_worktree_list (TYPE_1__*,int ) ;
 int git_worktree_validate (int *) ;

void test_worktree_bare__add(void)
{
 git_worktree *wt;
 git_repository *wtrepo;
 git_strarray wts;

 cl_git_pass(git_worktree_add(&wt, g_repo, "name", WORKTREE_REPO, ((void*)0)));

 cl_git_pass(git_worktree_list(&wts, g_repo));
 cl_assert_equal_i(wts.count, 1);

 cl_git_pass(git_worktree_validate(wt));

 cl_git_pass(git_repository_open(&wtrepo, WORKTREE_REPO));
 cl_assert_equal_i(0, git_repository_is_bare(wtrepo));
 cl_assert_equal_i(1, git_repository_is_worktree(wtrepo));

 git_strarray_free(&wts);
 git_worktree_free(wt);
 git_repository_free(wtrepo);
}

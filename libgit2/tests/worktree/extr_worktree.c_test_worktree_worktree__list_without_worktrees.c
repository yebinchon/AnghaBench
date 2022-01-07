
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_repository ;


 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int git_repository_free (int *) ;
 int git_worktree_list (TYPE_1__*,int *) ;

void test_worktree_worktree__list_without_worktrees(void)
{
 git_repository *repo;
 git_strarray wts;

 repo = cl_git_sandbox_init("testrepo2");
 cl_git_pass(git_worktree_list(&wts, repo));
 cl_assert_equal_i(wts.count, 0);

 git_repository_free(repo);
}

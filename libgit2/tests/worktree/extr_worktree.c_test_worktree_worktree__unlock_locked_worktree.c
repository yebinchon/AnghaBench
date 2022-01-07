
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int locked; } ;
typedef TYPE_1__ git_worktree ;
struct TYPE_9__ {int repo; } ;


 int cl_assert (int) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 TYPE_7__ fixture ;
 int git_worktree_free (TYPE_1__*) ;
 int git_worktree_is_locked (int *,TYPE_1__*) ;
 int git_worktree_lock (TYPE_1__*,int *) ;
 int git_worktree_lookup (TYPE_1__**,int ,char*) ;
 int git_worktree_unlock (TYPE_1__*) ;

void test_worktree_worktree__unlock_locked_worktree(void)
{
 git_worktree *wt;

 cl_git_pass(git_worktree_lookup(&wt, fixture.repo, "testrepo-worktree"));
 cl_git_pass(git_worktree_lock(wt, ((void*)0)));
 cl_assert(git_worktree_is_locked(((void*)0), wt));
 cl_assert_equal_i(0, git_worktree_unlock(wt));
 cl_assert(!wt->locked);

 git_worktree_free(wt);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_worktree ;
struct TYPE_6__ {int ptr; } ;
typedef TYPE_1__ git_buf ;
struct TYPE_7__ {int repo; } ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int clar_sandbox_path () ;
 TYPE_4__ fixture ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char*) ;
 int git_worktree_free (int *) ;
 int git_worktree_lookup (int **,int ,char*) ;
 int git_worktree_path (int *) ;

void test_worktree_worktree__path(void)
{
 git_worktree *wt;
 git_buf expected_path = GIT_BUF_INIT;

 cl_git_pass(git_buf_joinpath(&expected_path, clar_sandbox_path(), "testrepo-worktree"));
 cl_git_pass(git_worktree_lookup(&wt, fixture.repo, "testrepo-worktree"));
 cl_assert_equal_s(git_worktree_path(wt), expected_path.ptr);

 git_buf_dispose(&expected_path);
 git_worktree_free(wt);
}

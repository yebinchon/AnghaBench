
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * strings; int count; } ;
typedef TYPE_1__ git_strarray ;
struct TYPE_6__ {int worktree; } ;


 int cl_assert_equal_i (int ,int) ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_pass (int ) ;
 TYPE_4__ fixture ;
 int git_strarray_free (TYPE_1__*) ;
 int git_worktree_list (TYPE_1__*,int ) ;

void test_worktree_worktree__list_in_worktree_repo(void)
{
 git_strarray wts;

 cl_git_pass(git_worktree_list(&wts, fixture.worktree));
 cl_assert_equal_i(wts.count, 1);
 cl_assert_equal_s(wts.strings[0], "testrepo-worktree");

 git_strarray_free(&wts);
}

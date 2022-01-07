
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
typedef TYPE_1__ git_strarray ;


 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_strarray_free (TYPE_1__*) ;
 int git_worktree_list (TYPE_1__*,int ) ;

void test_worktree_bare__list(void)
{
 git_strarray wts;

 cl_git_pass(git_worktree_list(&wts, g_repo));
 cl_assert_equal_i(wts.count, 0);

 git_strarray_free(&wts);
}

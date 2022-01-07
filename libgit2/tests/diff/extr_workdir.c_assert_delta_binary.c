
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_patch ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ git_diff_delta ;
typedef int git_diff ;


 int GIT_DIFF_FLAG_BINARY ;
 int cl_assert_equal_b (int,int) ;
 int cl_git_pass (int ) ;
 int git_patch_free (int *) ;
 int git_patch_from_diff (int **,int *,size_t) ;
 TYPE_1__* git_patch_get_delta (int *) ;

__attribute__((used)) static void assert_delta_binary(git_diff *diff, size_t idx, int is_binary)
{
 git_patch *patch;
 const git_diff_delta *delta;

 cl_git_pass(git_patch_from_diff(&patch, diff, idx));
 delta = git_patch_get_delta(patch);
 cl_assert_equal_b((delta->flags & GIT_DIFF_FLAG_BINARY), is_binary);
 git_patch_free(patch);
}

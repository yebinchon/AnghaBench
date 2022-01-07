
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_index ;
struct TYPE_6__ {int status; } ;
typedef TYPE_1__ git_diff_delta ;
typedef int git_diff ;
struct TYPE_7__ {int checkout_strategy; } ;
typedef TYPE_2__ git_checkout_options ;


 int GIT_CHECKOUT_FORCE ;
 TYPE_2__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_DELTA_DELETED ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_checkout_index (int ,int *,TYPE_2__*) ;
 int git_diff_free (int *) ;
 TYPE_1__* git_diff_get_delta (int *,size_t) ;
 int git_diff_index_to_workdir (int **,int ,int *,int *) ;
 size_t git_diff_num_deltas (int *) ;
 int git_index_free (int *) ;
 int git_repository_head_tree (int **,int ) ;
 int git_repository_index (int **,int ) ;
 int git_tree_free (int *) ;
 int repo ;

void test_win32_forbidden__checking_out_forbidden_index_fails(void)
{
}

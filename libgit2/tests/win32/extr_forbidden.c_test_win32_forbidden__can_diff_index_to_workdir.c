
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_index ;
struct TYPE_3__ {int status; } ;
typedef TYPE_1__ git_diff_delta ;
typedef int git_diff ;


 int GIT_DELTA_DELETED ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_diff_free (int *) ;
 TYPE_1__* git_diff_get_delta (int *,size_t) ;
 int git_diff_index_to_workdir (int **,int ,int *,int *) ;
 size_t git_diff_num_deltas (int *) ;
 int git_index_free (int *) ;
 int git_repository_head_tree (int **,int ) ;
 int git_repository_index (int **,int ) ;
 int git_tree_free (int *) ;
 int repo ;

void test_win32_forbidden__can_diff_index_to_workdir(void)
{
 git_index *index;
 git_diff *diff;
 const git_diff_delta *delta;
 git_tree *tree;
 size_t i;

 cl_git_pass(git_repository_index(&index, repo));
 cl_git_pass(git_repository_head_tree(&tree, repo));
 cl_git_pass(git_diff_index_to_workdir(&diff, repo, index, ((void*)0)));

 for (i = 0; i < git_diff_num_deltas(diff); i++) {
  delta = git_diff_get_delta(diff, i);
  cl_assert_equal_i(GIT_DELTA_DELETED, delta->status);
 }

 git_diff_free(diff);
 git_tree_free(tree);
 git_index_free(index);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_diff ;


 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_diff_free (int *) ;
 int git_diff_num_deltas (int *) ;
 int git_diff_tree_to_index (int **,int ,int *,int *,int *) ;
 int git_repository_head_tree (int **,int ) ;
 int git_tree_free (int *) ;
 int repo ;

void test_win32_forbidden__can_diff_tree_to_index(void)
{
 git_diff *diff;
 git_tree *tree;

 cl_git_pass(git_repository_head_tree(&tree, repo));
 cl_git_pass(git_diff_tree_to_index(&diff, repo, tree, ((void*)0), ((void*)0)));
 cl_assert_equal_i(0, git_diff_num_deltas(diff));
 git_diff_free(diff);
 git_tree_free(tree);
}

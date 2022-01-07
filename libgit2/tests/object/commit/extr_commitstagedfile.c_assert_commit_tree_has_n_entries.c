
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_commit ;


 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int git_commit_tree (int **,int *) ;
 int git_tree_entrycount (int *) ;
 int git_tree_free (int *) ;

__attribute__((used)) static void assert_commit_tree_has_n_entries(git_commit *c, int count)
{
 git_tree *tree;
 cl_git_pass(git_commit_tree(&tree, c));
 cl_assert_equal_i(count, git_tree_entrycount(tree));
 git_tree_free(tree);
}

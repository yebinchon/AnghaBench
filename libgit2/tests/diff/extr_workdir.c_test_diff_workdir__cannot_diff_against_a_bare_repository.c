
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_diff_options ;
typedef int git_diff ;


 int GIT_DIFF_OPTIONS_INIT ;
 int GIT_EBAREREPO ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_diff_index_to_workdir (int **,int ,int *,int *) ;
 int git_diff_tree_to_workdir (int **,int ,int *,int *) ;
 int git_repository_head_tree (int **,int ) ;
 int git_tree_free (int *) ;

void test_diff_workdir__cannot_diff_against_a_bare_repository(void)
{
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0);
 git_tree *tree;

 g_repo = cl_git_sandbox_init("testrepo.git");

 cl_assert_equal_i(
  GIT_EBAREREPO, git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));

 cl_git_pass(git_repository_head_tree(&tree, g_repo));

 cl_assert_equal_i(
  GIT_EBAREREPO, git_diff_tree_to_workdir(&diff, g_repo, tree, &opts));

 git_tree_free(tree);
}

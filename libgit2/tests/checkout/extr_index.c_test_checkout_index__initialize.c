
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_object ;


 int GIT_CONFIG_LEVEL_GLOBAL ;
 int GIT_OPT_GET_SEARCH_PATH ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_git_sandbox_init (char*) ;
 int g_global_path ;
 int g_repo ;
 int git_libgit2_opts (int ,int ,int *) ;
 int git_repository_head_tree (int **,int ) ;
 int git_tree_free (int *) ;
 int reset_index_to_treeish (int *) ;

void test_checkout_index__initialize(void)
{
 git_tree *tree;

 g_repo = cl_git_sandbox_init("testrepo");

 cl_git_pass(git_repository_head_tree(&tree, g_repo));

 reset_index_to_treeish((git_object *)tree);
 git_tree_free(tree);

 cl_git_rewritefile(
  "./testrepo/.gitattributes",
  "* text eol=lf\n");

 git_libgit2_opts(GIT_OPT_GET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL,
  &g_global_path);
}

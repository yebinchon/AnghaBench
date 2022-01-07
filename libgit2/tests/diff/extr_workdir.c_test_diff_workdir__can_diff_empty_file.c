
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;
typedef int git_tree ;
typedef int git_patch ;
typedef int git_diff_options ;
typedef int git_diff ;


 int GIT_DIFF_OPTIONS_INIT ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_diff_free (int *) ;
 scalar_t__ git_diff_num_deltas (int *) ;
 int git_diff_tree_to_workdir (int **,int ,int *,int *) ;
 int git_patch_free (int *) ;
 int git_patch_from_diff (int **,int *,int) ;
 int git_path_exists (char*) ;
 int git_path_lstat (char*,struct stat*) ;
 int git_tree_free (int *) ;
 int p_unlink (char*) ;
 int * resolve_commit_oid_to_tree (int ,char*) ;

void test_diff_workdir__can_diff_empty_file(void)
{
 git_diff *diff;
 git_tree *tree;
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 struct stat st;
 git_patch *patch;

 g_repo = cl_git_sandbox_init("attr_index");

 tree = resolve_commit_oid_to_tree(g_repo, "3812cfef3661");



 cl_git_pass(git_diff_tree_to_workdir(&diff, g_repo, tree, &opts));
 cl_assert_equal_i(2, (int)git_diff_num_deltas(diff));
 git_diff_free(diff);



 cl_git_rewritefile("attr_index/README.txt", "");
 cl_git_pass(git_path_lstat("attr_index/README.txt", &st));
 cl_assert_equal_i(0, (int)st.st_size);

 cl_git_pass(git_diff_tree_to_workdir(&diff, g_repo, tree, &opts));
 cl_assert_equal_i(3, (int)git_diff_num_deltas(diff));

 cl_git_pass(git_patch_from_diff(&patch, diff, 1));
 git_patch_free(patch);
 git_diff_free(diff);



 cl_git_pass(p_unlink("attr_index/README.txt"));
 cl_assert(!git_path_exists("attr_index/README.txt"));

 cl_git_pass(git_diff_tree_to_workdir(&diff, g_repo, tree, &opts));
 cl_assert_equal_i(3, (int)git_diff_num_deltas(diff));
 cl_git_pass(git_patch_from_diff(&patch, diff, 1));
 git_patch_free(patch);
 git_diff_free(diff);

 git_tree_free(tree);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_object ;
typedef int git_index ;
typedef int git_diff_options ;
struct TYPE_7__ {void* flags; } ;
typedef TYPE_1__ git_diff_find_options ;
typedef int git_diff ;
typedef int exp ;
struct TYPE_8__ {int files; int * file_status; } ;
typedef TYPE_2__ diff_expects ;


 size_t GIT_DELTA_ADDED ;
 size_t GIT_DELTA_DELETED ;
 size_t GIT_DELTA_RENAMED ;
 void* GIT_DIFF_FIND_ALL ;
 TYPE_1__ GIT_DIFF_FIND_OPTIONS_INIT ;
 int GIT_DIFF_OPTIONS_INIT ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int cl_repo_commit_from_index (int *,int ,int *,int,char*) ;
 int diff_file_cb ;
 int g_repo ;
 int git_diff_find_similar (int *,TYPE_1__*) ;
 int git_diff_foreach (int *,int ,int *,int *,int *,TYPE_2__*) ;
 int git_diff_free (int *) ;
 int git_diff_tree_to_index (int **,int ,int *,int *,int *) ;
 int git_diff_tree_to_tree (int **,int ,int *,int *,int *) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_remove_bypath (int *,char*) ;
 int git_index_write (int *) ;
 int git_repository_index (int **,int ) ;
 int git_revparse_single (int **,int ,char*) ;
 int git_tree_free (int *) ;
 int memset (TYPE_2__*,int ,int) ;
 int p_rename (char*,char*) ;

__attribute__((used)) static void test_with_many(int expected_new)
{
 git_index *index;
 git_tree *tree, *new_tree;
 git_diff *diff = ((void*)0);
 diff_expects exp;
 git_diff_options diffopts = GIT_DIFF_OPTIONS_INIT;
 git_diff_find_options opts = GIT_DIFF_FIND_OPTIONS_INIT;

 cl_git_pass(git_repository_index(&index, g_repo));
 cl_git_pass(
  git_revparse_single((git_object **)&tree, g_repo, "HEAD^{tree}"));

 cl_git_pass(p_rename("renames/ikeepsix.txt", "renames/ikeepsix2.txt"));
 cl_git_pass(git_index_remove_bypath(index, "ikeepsix.txt"));
 cl_git_pass(git_index_add_bypath(index, "ikeepsix2.txt"));
 cl_git_pass(git_index_write(index));

 cl_git_pass(git_diff_tree_to_index(&diff, g_repo, tree, index, &diffopts));

 memset(&exp, 0, sizeof(exp));
 cl_git_pass(git_diff_foreach(
  diff, diff_file_cb, ((void*)0), ((void*)0), ((void*)0), &exp));
 cl_assert_equal_i(1, exp.file_status[GIT_DELTA_DELETED]);
 cl_assert_equal_i(expected_new + 1, exp.file_status[GIT_DELTA_ADDED]);
 cl_assert_equal_i(expected_new + 2, exp.files);

 opts.flags = GIT_DIFF_FIND_ALL;
 cl_git_pass(git_diff_find_similar(diff, &opts));

 memset(&exp, 0, sizeof(exp));
 cl_git_pass(git_diff_foreach(
  diff, diff_file_cb, ((void*)0), ((void*)0), ((void*)0), &exp));
 cl_assert_equal_i(1, exp.file_status[GIT_DELTA_RENAMED]);
 cl_assert_equal_i(expected_new, exp.file_status[GIT_DELTA_ADDED]);
 cl_assert_equal_i(expected_new + 1, exp.files);

 git_diff_free(diff);

 cl_repo_commit_from_index(((void*)0), g_repo, ((void*)0), 1372350000, "yoyoyo");
 cl_git_pass(git_revparse_single(
  (git_object **)&new_tree, g_repo, "HEAD^{tree}"));

 cl_git_pass(git_diff_tree_to_tree(
  &diff, g_repo, tree, new_tree, &diffopts));

 memset(&exp, 0, sizeof(exp));
 cl_git_pass(git_diff_foreach(
  diff, diff_file_cb, ((void*)0), ((void*)0), ((void*)0), &exp));
 cl_assert_equal_i(1, exp.file_status[GIT_DELTA_DELETED]);
 cl_assert_equal_i(expected_new + 1, exp.file_status[GIT_DELTA_ADDED]);
 cl_assert_equal_i(expected_new + 2, exp.files);

 opts.flags = GIT_DIFF_FIND_ALL;
 cl_git_pass(git_diff_find_similar(diff, &opts));

 memset(&exp, 0, sizeof(exp));
 cl_git_pass(git_diff_foreach(
  diff, diff_file_cb, ((void*)0), ((void*)0), ((void*)0), &exp));
 cl_assert_equal_i(1, exp.file_status[GIT_DELTA_RENAMED]);
 cl_assert_equal_i(expected_new, exp.file_status[GIT_DELTA_ADDED]);
 cl_assert_equal_i(expected_new + 1, exp.files);

 git_diff_free(diff);

 git_tree_free(new_tree);
 git_tree_free(tree);
 git_index_free(index);
}

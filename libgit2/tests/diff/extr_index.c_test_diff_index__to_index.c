
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_index ;
typedef int git_diff ;
struct TYPE_4__ {int * file_status; int files; } ;
typedef TYPE_1__ diff_expects ;


 size_t GIT_DELTA_ADDED ;
 size_t GIT_DELTA_CONFLICTED ;
 size_t GIT_DELTA_DELETED ;
 size_t GIT_DELTA_MODIFIED ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int diff_binary_cb ;
 int diff_file_cb ;
 int diff_hunk_cb ;
 int diff_line_cb ;
 int g_repo ;
 int git_diff_foreach (int *,int ,int ,int ,int ,TYPE_1__*) ;
 int git_diff_free (int *) ;
 int git_diff_index_to_index (int **,int ,int *,int *,int *) ;
 int git_index_free (int *) ;
 int git_index_new (int **) ;
 int git_index_read_tree (int *,int *) ;
 int git_repository_index (int **,int ) ;
 int git_tree_free (int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int * resolve_commit_oid_to_tree (int ,char const*) ;

void test_diff_index__to_index(void)
{
 const char *a_commit = "26a125ee1bf";
 git_tree *old_tree;
 git_index *old_index;
 git_index *new_index;
 git_diff *diff;
 diff_expects exp;

 cl_git_pass(git_index_new(&old_index));
 old_tree = resolve_commit_oid_to_tree(g_repo, a_commit);
 cl_git_pass(git_index_read_tree(old_index, old_tree));

 cl_git_pass(git_repository_index(&new_index, g_repo));

 cl_git_pass(git_diff_index_to_index(&diff, g_repo, old_index, new_index, ((void*)0)));

 memset(&exp, 0, sizeof(diff_expects));
 cl_git_pass(git_diff_foreach(
  diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
 cl_assert_equal_i(8, exp.files);
 cl_assert_equal_i(3, exp.file_status[GIT_DELTA_ADDED]);
 cl_assert_equal_i(2, exp.file_status[GIT_DELTA_DELETED]);
 cl_assert_equal_i(3, exp.file_status[GIT_DELTA_MODIFIED]);
 cl_assert_equal_i(0, exp.file_status[GIT_DELTA_CONFLICTED]);

 git_diff_free(diff);
 git_index_free(new_index);
 git_index_free(old_index);
 git_tree_free(old_tree);
}

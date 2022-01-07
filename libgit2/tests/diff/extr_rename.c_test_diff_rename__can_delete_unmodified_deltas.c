
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_object ;
typedef int git_index ;
struct TYPE_10__ {int flags; } ;
typedef TYPE_1__ git_diff_options ;
struct TYPE_11__ {int flags; } ;
typedef TYPE_2__ git_diff_find_options ;
typedef int git_diff ;
typedef int git_buf ;
typedef int exp ;
struct TYPE_12__ {int * file_status; int files; } ;
typedef TYPE_3__ diff_expects ;


 int GIT_BUF_INIT ;
 size_t GIT_DELTA_COPIED ;
 size_t GIT_DELTA_DELETED ;
 size_t GIT_DELTA_MODIFIED ;
 size_t GIT_DELTA_UNMODIFIED ;
 int GIT_DIFF_FIND_ALL ;
 TYPE_2__ GIT_DIFF_FIND_OPTIONS_INIT ;
 int GIT_DIFF_FIND_REMOVE_UNMODIFIED ;
 int GIT_DIFF_INCLUDE_UNMODIFIED ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int diff_binary_cb ;
 int diff_file_cb ;
 int diff_hunk_cb ;
 int diff_line_cb ;
 int g_repo ;
 int git_buf_dispose (int *) ;
 int git_diff_find_similar (int *,TYPE_2__*) ;
 int git_diff_foreach (int *,int ,int ,int ,int ,TYPE_3__*) ;
 int git_diff_free (int *) ;
 int git_diff_tree_to_index (int **,int ,int *,int *,TYPE_1__*) ;
 int git_futils_readbuffer (int *,char*) ;
 int git_futils_writebuffer (int *,char*,int ,int ) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_read_tree (int *,int *) ;
 int git_repository_index (int **,int ) ;
 int git_revparse_single (int **,int ,char*) ;
 int git_tree_free (int *) ;
 int memset (TYPE_3__*,int ,int) ;

void test_diff_rename__can_delete_unmodified_deltas(void)
{
 git_buf c1 = GIT_BUF_INIT;
 git_index *index;
 git_tree *tree;
 git_diff *diff;
 git_diff_options diffopts = GIT_DIFF_OPTIONS_INIT;
 git_diff_find_options opts = GIT_DIFF_FIND_OPTIONS_INIT;
 diff_expects exp;

 cl_git_pass(git_futils_readbuffer(&c1, "renames/songof7cities.txt"));
 cl_git_pass(git_futils_writebuffer(&c1, "renames/untimely.txt", 0, 0));

 cl_git_pass(
  git_revparse_single((git_object **)&tree, g_repo, "HEAD^{tree}"));

 cl_git_pass(git_repository_index(&index, g_repo));
 cl_git_pass(git_index_read_tree(index, tree));
 cl_git_pass(git_index_add_bypath(index, "untimely.txt"));

 diffopts.flags = GIT_DIFF_INCLUDE_UNMODIFIED;

 cl_git_pass(git_diff_tree_to_index(&diff, g_repo, tree, index, &diffopts));

 memset(&exp, 0, sizeof(exp));
 cl_git_pass(git_diff_foreach(
  diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
 cl_assert_equal_i(4, exp.files);
 cl_assert_equal_i(1, exp.file_status[GIT_DELTA_MODIFIED]);
 cl_assert_equal_i(3, exp.file_status[GIT_DELTA_UNMODIFIED]);

 opts.flags = GIT_DIFF_FIND_ALL | GIT_DIFF_FIND_REMOVE_UNMODIFIED;
 cl_git_pass(git_diff_find_similar(diff, &opts));

 memset(&exp, 0, sizeof(exp));
 cl_git_pass(git_diff_foreach(
  diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
 cl_assert_equal_i(2, exp.files);
 cl_assert_equal_i(1, exp.file_status[GIT_DELTA_DELETED]);
 cl_assert_equal_i(1, exp.file_status[GIT_DELTA_COPIED]);

 git_diff_free(diff);
 git_tree_free(tree);
 git_index_free(index);

 git_buf_dispose(&c1);
}

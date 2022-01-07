
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_tree ;
struct TYPE_7__ {int context_lines; int interhunk_lines; } ;
typedef TYPE_1__ git_diff_options ;
typedef int git_diff ;
typedef int exp ;
struct TYPE_8__ {int line_dels; int line_adds; int line_ctxt; int lines; int hunks; int * file_status; int files; } ;
typedef TYPE_2__ diff_expects ;


 size_t GIT_DELTA_ADDED ;
 size_t GIT_DELTA_DELETED ;
 size_t GIT_DELTA_MODIFIED ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int cl_assert (int *) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int diff_binary_cb ;
 int diff_file_cb ;
 int diff_hunk_cb ;
 int diff_line_cb ;
 int g_repo ;
 int git_diff_foreach (int *,int ,int ,int ,int ,TYPE_2__*) ;
 int git_diff_free (int *) ;
 int git_diff_tree_to_index (int **,int ,int *,int *,TYPE_1__*) ;
 int git_tree_free (int *) ;
 int memset (TYPE_2__*,int ,int) ;
 int * resolve_commit_oid_to_tree (int ,char const*) ;

void test_diff_index__0(void)
{

 const char *a_commit = "26a125ee1bf";
 const char *b_commit = "0017bd4ab1ec3";
 git_tree *a = resolve_commit_oid_to_tree(g_repo, a_commit);
 git_tree *b = resolve_commit_oid_to_tree(g_repo, b_commit);
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0);
 diff_expects exp;

 cl_assert(a);
 cl_assert(b);

 opts.context_lines = 1;
 opts.interhunk_lines = 1;

 memset(&exp, 0, sizeof(exp));

 cl_git_pass(git_diff_tree_to_index(&diff, g_repo, a, ((void*)0), &opts));

 cl_git_pass(git_diff_foreach(
  diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
 cl_assert_equal_i(8, exp.files);
 cl_assert_equal_i(3, exp.file_status[GIT_DELTA_ADDED]);
 cl_assert_equal_i(2, exp.file_status[GIT_DELTA_DELETED]);
 cl_assert_equal_i(3, exp.file_status[GIT_DELTA_MODIFIED]);

 cl_assert_equal_i(8, exp.hunks);

 cl_assert_equal_i(11, exp.lines);
 cl_assert_equal_i(3, exp.line_ctxt);
 cl_assert_equal_i(6, exp.line_adds);
 cl_assert_equal_i(2, exp.line_dels);

 git_diff_free(diff);
 diff = ((void*)0);
 memset(&exp, 0, sizeof(exp));

 cl_git_pass(git_diff_tree_to_index(&diff, g_repo, b, ((void*)0), &opts));

 cl_git_pass(git_diff_foreach(
  diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
 cl_assert_equal_i(12, exp.files);
 cl_assert_equal_i(7, exp.file_status[GIT_DELTA_ADDED]);
 cl_assert_equal_i(2, exp.file_status[GIT_DELTA_DELETED]);
 cl_assert_equal_i(3, exp.file_status[GIT_DELTA_MODIFIED]);

 cl_assert_equal_i(12, exp.hunks);

 cl_assert_equal_i(16, exp.lines);
 cl_assert_equal_i(3, exp.line_ctxt);
 cl_assert_equal_i(11, exp.line_adds);
 cl_assert_equal_i(2, exp.line_dels);

 git_diff_free(diff);
 diff = ((void*)0);

 git_tree_free(a);
 git_tree_free(b);
}

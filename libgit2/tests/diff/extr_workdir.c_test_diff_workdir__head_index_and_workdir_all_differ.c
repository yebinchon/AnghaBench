
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int git_tree ;
struct TYPE_10__ {char** strings; int count; } ;
struct TYPE_11__ {TYPE_1__ pathspec; } ;
typedef TYPE_2__ git_diff_options ;
typedef int git_diff ;
typedef int exp ;
struct TYPE_12__ {int line_dels; int line_adds; int line_ctxt; int lines; int hunks; int * file_status; int files; } ;
typedef TYPE_3__ diff_expects ;


 size_t GIT_DELTA_ADDED ;
 size_t GIT_DELTA_DELETED ;
 size_t GIT_DELTA_MODIFIED ;
 TYPE_2__ GIT_DIFF_OPTIONS_INIT ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int diff_binary_cb ;
 int diff_file_cb ;
 int diff_foreach_via_iterator (int *,int ,int ,int ,int ,TYPE_3__*) ;
 int diff_hunk_cb ;
 int diff_line_cb ;
 int g_repo ;
 int git_diff_foreach (int *,int ,int ,int ,int ,TYPE_3__*) ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int ,int *,TYPE_2__*) ;
 int git_diff_merge (int *,int *) ;
 int git_diff_tree_to_index (int **,int ,int *,int *,TYPE_2__*) ;
 int git_tree_free (int *) ;
 int memset (TYPE_3__*,int ,int) ;
 int * resolve_commit_oid_to_tree (int ,char*) ;

void test_diff_workdir__head_index_and_workdir_all_differ(void)
{
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff_i2t = ((void*)0), *diff_w2i = ((void*)0);
 diff_expects exp;
 char *pathspec = "staged_changes_modified_file";
 git_tree *tree;
 int use_iterator;
 g_repo = cl_git_sandbox_init("status");

 tree = resolve_commit_oid_to_tree(g_repo, "26a125ee1bfc5df1e1b2e9441bbe63c8a7ae989f");

 opts.pathspec.strings = &pathspec;
 opts.pathspec.count = 1;

 cl_git_pass(git_diff_tree_to_index(&diff_i2t, g_repo, tree, ((void*)0), &opts));
 cl_git_pass(git_diff_index_to_workdir(&diff_w2i, g_repo, ((void*)0), &opts));

 for (use_iterator = 0; use_iterator <= 1; use_iterator++) {
  memset(&exp, 0, sizeof(exp));

  if (use_iterator)
   cl_git_pass(diff_foreach_via_iterator(
    diff_i2t, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
  else
   cl_git_pass(git_diff_foreach(
    diff_i2t, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

  cl_assert_equal_i(1, exp.files);
  cl_assert_equal_i(0, exp.file_status[GIT_DELTA_ADDED]);
  cl_assert_equal_i(0, exp.file_status[GIT_DELTA_DELETED]);
  cl_assert_equal_i(1, exp.file_status[GIT_DELTA_MODIFIED]);
  cl_assert_equal_i(1, exp.hunks);
  cl_assert_equal_i(2, exp.lines);
  cl_assert_equal_i(1, exp.line_ctxt);
  cl_assert_equal_i(1, exp.line_adds);
  cl_assert_equal_i(0, exp.line_dels);
 }

 for (use_iterator = 0; use_iterator <= 1; use_iterator++) {
  memset(&exp, 0, sizeof(exp));

  if (use_iterator)
   cl_git_pass(diff_foreach_via_iterator(
    diff_w2i, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
  else
   cl_git_pass(git_diff_foreach(
    diff_w2i, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

  cl_assert_equal_i(1, exp.files);
  cl_assert_equal_i(0, exp.file_status[GIT_DELTA_ADDED]);
  cl_assert_equal_i(0, exp.file_status[GIT_DELTA_DELETED]);
  cl_assert_equal_i(1, exp.file_status[GIT_DELTA_MODIFIED]);
  cl_assert_equal_i(1, exp.hunks);
  cl_assert_equal_i(3, exp.lines);
  cl_assert_equal_i(2, exp.line_ctxt);
  cl_assert_equal_i(1, exp.line_adds);
  cl_assert_equal_i(0, exp.line_dels);
 }

 cl_git_pass(git_diff_merge(diff_i2t, diff_w2i));

 for (use_iterator = 0; use_iterator <= 1; use_iterator++) {
  memset(&exp, 0, sizeof(exp));

  if (use_iterator)
   cl_git_pass(diff_foreach_via_iterator(
    diff_i2t, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
  else
   cl_git_pass(git_diff_foreach(
    diff_i2t, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

  cl_assert_equal_i(1, exp.files);
  cl_assert_equal_i(0, exp.file_status[GIT_DELTA_ADDED]);
  cl_assert_equal_i(0, exp.file_status[GIT_DELTA_DELETED]);
  cl_assert_equal_i(1, exp.file_status[GIT_DELTA_MODIFIED]);
  cl_assert_equal_i(1, exp.hunks);
  cl_assert_equal_i(3, exp.lines);
  cl_assert_equal_i(1, exp.line_ctxt);
  cl_assert_equal_i(2, exp.line_adds);
  cl_assert_equal_i(0, exp.line_dels);
 }

 git_diff_free(diff_i2t);
 git_diff_free(diff_w2i);

 git_tree_free(tree);
}

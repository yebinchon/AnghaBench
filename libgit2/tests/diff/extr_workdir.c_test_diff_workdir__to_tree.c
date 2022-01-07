
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int git_tree ;
struct TYPE_10__ {int context_lines; int interhunk_lines; int flags; } ;
typedef TYPE_1__ git_diff_options ;
typedef int git_diff ;
typedef int exp ;
struct TYPE_11__ {int line_adds; int line_dels; int line_ctxt; int lines; int hunks; int * file_status; int files; } ;
typedef TYPE_2__ diff_expects ;


 size_t GIT_DELTA_ADDED ;
 size_t GIT_DELTA_DELETED ;
 size_t GIT_DELTA_IGNORED ;
 size_t GIT_DELTA_MODIFIED ;
 size_t GIT_DELTA_UNTRACKED ;
 int GIT_DIFF_INCLUDE_IGNORED ;
 int GIT_DIFF_INCLUDE_UNTRACKED ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_DIFF_REVERSE ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int diff_binary_cb ;
 int diff_file_cb ;
 int diff_foreach_via_iterator (int *,int ,int ,int ,int ,TYPE_2__*) ;
 int diff_hunk_cb ;
 int diff_line_cb ;
 int g_repo ;
 int git_diff_foreach (int *,int ,int ,int ,int ,TYPE_2__*) ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int ,int *,TYPE_1__*) ;
 int git_diff_merge (int *,int *) ;
 int git_diff_tree_to_index (int **,int ,int *,int *,TYPE_1__*) ;
 int git_diff_tree_to_workdir (int **,int ,int *,TYPE_1__*) ;
 int git_tree_free (int *) ;
 int memset (TYPE_2__*,int ,int) ;
 int * resolve_commit_oid_to_tree (int ,char const*) ;

void test_diff_workdir__to_tree(void)
{

 const char *a_commit = "26a125ee1bf";
 const char *b_commit = "0017bd4ab1ec3";
 git_tree *a, *b;
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0);
 git_diff *diff2 = ((void*)0);
 diff_expects exp;
 int use_iterator;

 g_repo = cl_git_sandbox_init("status");

 a = resolve_commit_oid_to_tree(g_repo, a_commit);
 b = resolve_commit_oid_to_tree(g_repo, b_commit);

 opts.context_lines = 3;
 opts.interhunk_lines = 1;
 opts.flags |= GIT_DIFF_INCLUDE_IGNORED | GIT_DIFF_INCLUDE_UNTRACKED;
 cl_git_pass(git_diff_tree_to_workdir(&diff, g_repo, a, &opts));

 for (use_iterator = 0; use_iterator <= 1; use_iterator++) {
  memset(&exp, 0, sizeof(exp));

  if (use_iterator)
   cl_git_pass(diff_foreach_via_iterator(
    diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
  else
   cl_git_pass(git_diff_foreach(
    diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

  cl_assert_equal_i(14, exp.files);
  cl_assert_equal_i(0, exp.file_status[GIT_DELTA_ADDED]);
  cl_assert_equal_i(4, exp.file_status[GIT_DELTA_DELETED]);
  cl_assert_equal_i(4, exp.file_status[GIT_DELTA_MODIFIED]);
  cl_assert_equal_i(1, exp.file_status[GIT_DELTA_IGNORED]);
  cl_assert_equal_i(5, exp.file_status[GIT_DELTA_UNTRACKED]);
 }






 git_diff_free(diff);
 diff = ((void*)0);
 memset(&exp, 0, sizeof(exp));





 cl_git_pass(git_diff_tree_to_index(&diff, g_repo, a, ((void*)0), &opts));
 cl_git_pass(git_diff_index_to_workdir(&diff2, g_repo, ((void*)0), &opts));
 cl_git_pass(git_diff_merge(diff, diff2));
 git_diff_free(diff2);

 for (use_iterator = 0; use_iterator <= 1; use_iterator++) {
  memset(&exp, 0, sizeof(exp));

  if (use_iterator)
   cl_git_pass(diff_foreach_via_iterator(
    diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
  else
   cl_git_pass(git_diff_foreach(
    diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

  cl_assert_equal_i(15, exp.files);
  cl_assert_equal_i(2, exp.file_status[GIT_DELTA_ADDED]);
  cl_assert_equal_i(5, exp.file_status[GIT_DELTA_DELETED]);
  cl_assert_equal_i(4, exp.file_status[GIT_DELTA_MODIFIED]);
  cl_assert_equal_i(1, exp.file_status[GIT_DELTA_IGNORED]);
  cl_assert_equal_i(3, exp.file_status[GIT_DELTA_UNTRACKED]);

  cl_assert_equal_i(11, exp.hunks);

  cl_assert_equal_i(17, exp.lines);
  cl_assert_equal_i(4, exp.line_ctxt);
  cl_assert_equal_i(8, exp.line_adds);
  cl_assert_equal_i(5, exp.line_dels);
 }

 git_diff_free(diff);
 diff = ((void*)0);
 memset(&exp, 0, sizeof(exp));




 cl_git_pass(git_diff_tree_to_index(&diff, g_repo, b, ((void*)0), &opts));
 cl_git_pass(git_diff_index_to_workdir(&diff2, g_repo, ((void*)0), &opts));
 cl_git_pass(git_diff_merge(diff, diff2));
 git_diff_free(diff2);

 for (use_iterator = 0; use_iterator <= 1; use_iterator++) {
  memset(&exp, 0, sizeof(exp));

  if (use_iterator)
   cl_git_pass(diff_foreach_via_iterator(
    diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
  else
   cl_git_pass(git_diff_foreach(
    diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

  cl_assert_equal_i(16, exp.files);
  cl_assert_equal_i(5, exp.file_status[GIT_DELTA_ADDED]);
  cl_assert_equal_i(4, exp.file_status[GIT_DELTA_DELETED]);
  cl_assert_equal_i(3, exp.file_status[GIT_DELTA_MODIFIED]);
  cl_assert_equal_i(1, exp.file_status[GIT_DELTA_IGNORED]);
  cl_assert_equal_i(3, exp.file_status[GIT_DELTA_UNTRACKED]);

  cl_assert_equal_i(12, exp.hunks);

  cl_assert_equal_i(19, exp.lines);
  cl_assert_equal_i(3, exp.line_ctxt);
  cl_assert_equal_i(12, exp.line_adds);
  cl_assert_equal_i(4, exp.line_dels);
 }

 git_diff_free(diff);



 opts.flags |= GIT_DIFF_REVERSE;

 cl_git_pass(git_diff_tree_to_index(&diff, g_repo, b, ((void*)0), &opts));
 cl_git_pass(git_diff_index_to_workdir(&diff2, g_repo, ((void*)0), &opts));
 cl_git_pass(git_diff_merge(diff, diff2));
 git_diff_free(diff2);

 memset(&exp, 0, sizeof(exp));

 cl_git_pass(git_diff_foreach(
  diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

 cl_assert_equal_i(16, exp.files);
 cl_assert_equal_i(5, exp.file_status[GIT_DELTA_DELETED]);
 cl_assert_equal_i(4, exp.file_status[GIT_DELTA_ADDED]);
 cl_assert_equal_i(3, exp.file_status[GIT_DELTA_MODIFIED]);
 cl_assert_equal_i(1, exp.file_status[GIT_DELTA_IGNORED]);
 cl_assert_equal_i(3, exp.file_status[GIT_DELTA_UNTRACKED]);

 cl_assert_equal_i(12, exp.hunks);

 cl_assert_equal_i(19, exp.lines);
 cl_assert_equal_i(3, exp.line_ctxt);
 cl_assert_equal_i(12, exp.line_dels);
 cl_assert_equal_i(4, exp.line_adds);

 git_diff_free(diff);



 git_tree_free(a);
 git_tree_free(b);
}

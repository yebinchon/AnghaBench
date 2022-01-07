
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_tree ;
struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ git_diff_options ;
typedef int git_diff ;
typedef int exp ;
struct TYPE_8__ {int line_dels; int line_adds; int line_ctxt; int lines; int hunks; int * file_status; int files; } ;
typedef TYPE_2__ diff_expects ;


 size_t GIT_DELTA_ADDED ;
 size_t GIT_DELTA_DELETED ;
 size_t GIT_DELTA_IGNORED ;
 size_t GIT_DELTA_MODIFIED ;
 size_t GIT_DELTA_UNTRACKED ;
 int GIT_DIFF_INCLUDE_IGNORED ;
 int GIT_DIFF_INCLUDE_UNTRACKED ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_DIFF_RECURSE_UNTRACKED_DIRS ;
 int GIT_DIFF_SHOW_UNTRACKED_CONTENT ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int diff_binary_cb ;
 int diff_file_cb ;
 int diff_hunk_cb ;
 int diff_line_cb ;
 int g_repo ;
 int git_diff_foreach (int *,int ,int ,int ,int ,TYPE_2__*) ;
 int git_diff_free (int *) ;
 int git_diff_tree_to_workdir (int **,int ,int *,TYPE_1__*) ;
 int git_tree_free (int *) ;
 int memset (TYPE_2__*,int ,int) ;
 int * resolve_commit_oid_to_tree (int ,char const*) ;
 int setup_fixture_submod2 () ;

void test_diff_workdir__submodules(void)
{
 const char *a_commit = "873585b94bdeabccea991ea5e3ec1a277895b698";
 git_tree *a;
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0);
 diff_expects exp;

 g_repo = setup_fixture_submod2();

 a = resolve_commit_oid_to_tree(g_repo, a_commit);

 opts.flags =
  GIT_DIFF_INCLUDE_UNTRACKED |
  GIT_DIFF_INCLUDE_IGNORED |
  GIT_DIFF_RECURSE_UNTRACKED_DIRS |
  GIT_DIFF_SHOW_UNTRACKED_CONTENT;

 cl_git_pass(git_diff_tree_to_workdir(&diff, g_repo, a, &opts));





 memset(&exp, 0, sizeof(exp));

 cl_git_pass(git_diff_foreach(
  diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));
 cl_assert_equal_i(12, exp.files);

 cl_assert_equal_i(0, exp.file_status[GIT_DELTA_ADDED]);
 cl_assert_equal_i(0, exp.file_status[GIT_DELTA_DELETED]);
 cl_assert_equal_i(2, exp.file_status[GIT_DELTA_MODIFIED]);
 cl_assert_equal_i(0, exp.file_status[GIT_DELTA_IGNORED]);
 cl_assert_equal_i(10, exp.file_status[GIT_DELTA_UNTRACKED]);



 cl_assert_equal_i(9, exp.hunks);

 cl_assert_equal_i(33, exp.lines);
 cl_assert_equal_i(2, exp.line_ctxt);
 cl_assert_equal_i(30, exp.line_adds);
 cl_assert_equal_i(1, exp.line_dels);

 git_diff_free(diff);
 git_tree_free(a);
}

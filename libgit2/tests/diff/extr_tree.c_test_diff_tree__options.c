
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_diff_options ;
struct TYPE_4__ {int member_0; int member_3; int member_6; int member_7; int member_8; int member_9; scalar_t__ files; scalar_t__* file_status; scalar_t__ hunks; scalar_t__ lines; scalar_t__ line_ctxt; scalar_t__ line_adds; scalar_t__ line_dels; int member_5; int member_4; int member_2; int member_1; } ;
typedef TYPE_1__ diff_expects ;
typedef int actual ;


 int DIFF_OPTS (int,int) ;
 int EXPECT_STATUS_ADM (int,int,int) ;
 int GIT_DELTA_TYPECHANGE ;
 int GIT_DELTA_UNMODIFIED ;
 int GIT_DIFF_FORCE_TEXT ;
 int GIT_DIFF_IGNORE_WHITESPACE ;
 int GIT_DIFF_IGNORE_WHITESPACE_CHANGE ;
 int GIT_DIFF_IGNORE_WHITESPACE_EOL ;
 int GIT_DIFF_NORMAL ;
 int GIT_DIFF_REVERSE ;
 int * a ;
 int * b ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (scalar_t__,scalar_t__) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int * diff ;
 int diff_binary_cb ;
 int diff_file_cb ;
 int diff_hunk_cb ;
 int diff_line_cb ;
 int g_repo ;
 int git_diff_foreach (int *,int ,int ,int ,int ,TYPE_1__*) ;
 int git_diff_free (int *) ;
 int git_diff_tree_to_tree (int **,int ,int *,int *,int *) ;
 int git_tree_free (int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int opts ;
 int * resolve_commit_oid_to_tree (int ,char const*) ;

void test_diff_tree__options(void)
{

 const char *a_commit = "6bab5c79cd5140d0";
 const char *b_commit = "605812ab7fe421fdd";
 const char *c_commit = "f5b0af1fb4f5";
 const char *d_commit = "a97cc019851";
 git_tree *c, *d;
 diff_expects actual;
 int test_ab_or_cd[] = { 0, 0, 0, 0, 1, 1, 1, 1, 1 };
 git_diff_options test_options[] = {

  DIFF_OPTS(GIT_DIFF_NORMAL, 1),
  DIFF_OPTS(GIT_DIFF_NORMAL, 3),
  DIFF_OPTS(GIT_DIFF_REVERSE, 2),
  DIFF_OPTS(GIT_DIFF_FORCE_TEXT, 2),

  DIFF_OPTS(GIT_DIFF_NORMAL, 3),
  DIFF_OPTS(GIT_DIFF_IGNORE_WHITESPACE, 3),
  DIFF_OPTS(GIT_DIFF_IGNORE_WHITESPACE_CHANGE, 3),
  DIFF_OPTS(GIT_DIFF_IGNORE_WHITESPACE_EOL, 3),
  DIFF_OPTS(GIT_DIFF_IGNORE_WHITESPACE | GIT_DIFF_REVERSE, 1),
 };
 diff_expects test_expects[] = {

  { 5, 0, { 0, 3, 0, 2, 0, 0, 0, 0, 0 }, 4, 0, 0, 51, 2, 46, 3 },
  { 5, 0, { 0, 3, 0, 2, 0, 0, 0, 0, 0 }, 4, 0, 0, 53, 4, 46, 3 },
  { 5, 0, { 0, 0, 3, 2, 0, 0, 0, 0, 0 }, 4, 0, 0, 52, 3, 3, 46 },
  { 5, 0, { 0, 3, 0, 2, 0, 0, 0, 0, 0 }, 5, 0, 0, 54, 3, 47, 4 },

  { 1, 0, { 0, 0, 0, 1, 0, 0, 0, 0, 0 }, 1, 0, 0, 22, 9, 10, 3 },
  { 1, 0, { 0, 0, 0, 1, 0, 0, 0, 0, 0 }, 1, 0, 0, 19, 12, 7, 0 },
  { 1, 0, { 0, 0, 0, 1, 0, 0, 0, 0, 0 }, 1, 0, 0, 20, 11, 8, 1 },
  { 1, 0, { 0, 0, 0, 1, 0, 0, 0, 0, 0 }, 1, 0, 0, 20, 11, 8, 1 },
  { 1, 0, { 0, 0, 0, 1, 0, 0, 0, 0, 0 }, 1, 0, 0, 18, 11, 0, 7 },
  { 0 },
 };
 diff_expects *expected;
 int i, j;

 g_repo = cl_git_sandbox_init("attr");

 cl_assert((a = resolve_commit_oid_to_tree(g_repo, a_commit)) != ((void*)0));
 cl_assert((b = resolve_commit_oid_to_tree(g_repo, b_commit)) != ((void*)0));
 cl_assert((c = resolve_commit_oid_to_tree(g_repo, c_commit)) != ((void*)0));
 cl_assert((d = resolve_commit_oid_to_tree(g_repo, d_commit)) != ((void*)0));

 for (i = 0; test_expects[i].files > 0; i++) {
  memset(&actual, 0, sizeof(actual));
  opts = test_options[i];

  if (test_ab_or_cd[i] == 0)
   cl_git_pass(git_diff_tree_to_tree(&diff, g_repo, a, b, &opts));
  else
   cl_git_pass(git_diff_tree_to_tree(&diff, g_repo, c, d, &opts));

  cl_git_pass(git_diff_foreach(
   diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &actual));

  expected = &test_expects[i];
  cl_assert_equal_i(actual.files, expected->files);
  for (j = GIT_DELTA_UNMODIFIED; j <= GIT_DELTA_TYPECHANGE; ++j)
   cl_assert_equal_i(expected->file_status[j], actual.file_status[j]);
  cl_assert_equal_i(actual.hunks, expected->hunks);
  cl_assert_equal_i(actual.lines, expected->lines);
  cl_assert_equal_i(actual.line_ctxt, expected->line_ctxt);
  cl_assert_equal_i(actual.line_adds, expected->line_adds);
  cl_assert_equal_i(actual.line_dels, expected->line_dels);

  git_diff_free(diff);
  diff = ((void*)0);
 }

 git_tree_free(c);
 git_tree_free(d);
}

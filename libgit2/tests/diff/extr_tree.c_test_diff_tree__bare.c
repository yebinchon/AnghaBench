
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int line_dels; int line_adds; int line_ctxt; int lines; int hunks; int * file_status; int files; } ;
struct TYPE_5__ {int context_lines; int interhunk_lines; } ;


 size_t GIT_DELTA_ADDED ;
 size_t GIT_DELTA_DELETED ;
 size_t GIT_DELTA_MODIFIED ;
 int * a ;
 int * b ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int diff ;
 int diff_binary_cb ;
 int diff_file_cb ;
 int diff_hunk_cb ;
 int diff_line_cb ;
 TYPE_3__ expect ;
 int g_repo ;
 int git_diff_foreach (int ,int ,int ,int ,int ,TYPE_3__*) ;
 int git_diff_tree_to_tree (int *,int ,int *,int *,TYPE_1__*) ;
 TYPE_1__ opts ;
 void* resolve_commit_oid_to_tree (int ,char const*) ;

void test_diff_tree__bare(void)
{
 const char *a_commit = "8496071c1b46c85";
 const char *b_commit = "be3563ae3f79";

 g_repo = cl_git_sandbox_init("testrepo.git");

 cl_assert((a = resolve_commit_oid_to_tree(g_repo, a_commit)) != ((void*)0));
 cl_assert((b = resolve_commit_oid_to_tree(g_repo, b_commit)) != ((void*)0));

 opts.context_lines = 1;
 opts.interhunk_lines = 1;

 cl_git_pass(git_diff_tree_to_tree(&diff, g_repo, a, b, &opts));

 cl_git_pass(git_diff_foreach(
  diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &expect));

 cl_assert_equal_i(3, expect.files);
 cl_assert_equal_i(2, expect.file_status[GIT_DELTA_ADDED]);
 cl_assert_equal_i(0, expect.file_status[GIT_DELTA_DELETED]);
 cl_assert_equal_i(1, expect.file_status[GIT_DELTA_MODIFIED]);

 cl_assert_equal_i(3, expect.hunks);

 cl_assert_equal_i(4, expect.lines);
 cl_assert_equal_i(0, expect.line_ctxt);
 cl_assert_equal_i(3, expect.line_adds);
 cl_assert_equal_i(1, expect.line_dels);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int context_lines; int interhunk_lines; } ;
typedef TYPE_1__ git_diff_options ;
typedef int git_diff ;
typedef int exp ;
struct TYPE_8__ {int line_dels; int line_adds; int line_ctxt; int lines; int hunks; int * file_status; int files; } ;
typedef TYPE_2__ diff_expects ;


 size_t GIT_DELTA_MODIFIED ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_git_sandbox_init (char*) ;
 int cl_repo_set_bool (int ,char*,int) ;
 int diff_binary_cb ;
 int diff_file_cb ;
 int diff_hunk_cb ;
 int diff_line_cb ;
 int g_repo ;
 int git_diff_foreach (int *,int ,int ,int ,int ,TYPE_2__*) ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int ,int *,TYPE_1__*) ;
 int memset (TYPE_2__*,int ,int) ;

void test_diff_workdir__to_index_issue_1397(void)
{
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0);
 diff_expects exp;

 g_repo = cl_git_sandbox_init("issue_1397");

 cl_repo_set_bool(g_repo, "core.autocrlf", 1);

 opts.context_lines = 3;
 opts.interhunk_lines = 1;

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));

 memset(&exp, 0, sizeof(exp));
 cl_git_pass(git_diff_foreach(
  diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

 cl_assert_equal_i(0, exp.files);
 cl_assert_equal_i(0, exp.hunks);
 cl_assert_equal_i(0, exp.lines);

 git_diff_free(diff);
 diff = ((void*)0);

 cl_git_rewritefile("issue_1397/crlf_file.txt",
  "first line\r\nsecond line modified\r\nboth with crlf");

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));

 memset(&exp, 0, sizeof(exp));
 cl_git_pass(git_diff_foreach(
  diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

 cl_assert_equal_i(1, exp.files);
 cl_assert_equal_i(1, exp.file_status[GIT_DELTA_MODIFIED]);

 cl_assert_equal_i(1, exp.hunks);

 cl_assert_equal_i(5, exp.lines);
 cl_assert_equal_i(3, exp.line_ctxt);
 cl_assert_equal_i(1, exp.line_adds);
 cl_assert_equal_i(1, exp.line_dels);

 git_diff_free(diff);
}

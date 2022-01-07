
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int git_tree ;
struct TYPE_9__ {int context_lines; int interhunk_lines; } ;
typedef TYPE_1__ git_diff_options ;
typedef int git_diff ;
typedef int exp ;
struct TYPE_10__ {int lines; int hunks; int files; } ;
typedef TYPE_2__ diff_expects ;


 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
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
 int git_diff_merge (int *,int *) ;
 int git_diff_tree_to_index (int **,int ,int *,int *,TYPE_1__*) ;
 int git_diff_tree_to_workdir (int **,int ,int *,TYPE_1__*) ;
 int git_tree_free (int *) ;
 int memset (TYPE_2__*,int ,int) ;
 int * resolve_commit_oid_to_tree (int ,char const*) ;

void test_diff_workdir__to_tree_issue_1397(void)
{
 const char *a_commit = "7f483a738";
 git_tree *a;
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0);
 git_diff *diff2 = ((void*)0);
 diff_expects exp;

 g_repo = cl_git_sandbox_init("issue_1397");

 cl_repo_set_bool(g_repo, "core.autocrlf", 1);

 a = resolve_commit_oid_to_tree(g_repo, a_commit);

 opts.context_lines = 3;
 opts.interhunk_lines = 1;

 cl_git_pass(git_diff_tree_to_workdir(&diff, g_repo, a, &opts));

 memset(&exp, 0, sizeof(exp));
 cl_git_pass(git_diff_foreach(
  diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

 cl_assert_equal_i(0, exp.files);
 cl_assert_equal_i(0, exp.hunks);
 cl_assert_equal_i(0, exp.lines);

 git_diff_free(diff);
 diff = ((void*)0);

 cl_git_pass(git_diff_tree_to_index(&diff, g_repo, a, ((void*)0), &opts));
 cl_git_pass(git_diff_index_to_workdir(&diff2, g_repo, ((void*)0), &opts));
 cl_git_pass(git_diff_merge(diff, diff2));
 git_diff_free(diff2);

 memset(&exp, 0, sizeof(exp));
 cl_git_pass(git_diff_foreach(
  diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

 cl_assert_equal_i(0, exp.files);
 cl_assert_equal_i(0, exp.hunks);
 cl_assert_equal_i(0, exp.lines);

 git_diff_free(diff);
 git_tree_free(a);
}

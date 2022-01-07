
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_diff ;
typedef int exp ;
struct TYPE_4__ {int hunks; int * file_status; int files; } ;
typedef TYPE_1__ diff_expects ;


 size_t GIT_DELTA_MODIFIED ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int cl_is_chmod_supported () ;
 int cl_repo_set_bool (int ,char*,int) ;
 int cl_toggle_filemode (char*) ;
 int diff_binary_cb ;
 int diff_file_cb ;
 int diff_hunk_cb ;
 int diff_line_cb ;
 int g_repo ;
 int git_diff_foreach (int *,int ,int ,int ,int ,TYPE_1__*) ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int ,int *,int *) ;
 int memset (TYPE_1__*,int ,int) ;

void test_diff_workdir__filemode_changes_with_filemode_false(void)
{
 git_diff *diff = ((void*)0);
 diff_expects exp;

 if (!cl_is_chmod_supported())
  return;

 g_repo = cl_git_sandbox_init("issue_592");

 cl_repo_set_bool(g_repo, "core.filemode", 0);



 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), ((void*)0)));

 memset(&exp, 0, sizeof(exp));
 cl_git_pass(git_diff_foreach(
  diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

 cl_assert_equal_i(0, exp.files);
 cl_assert_equal_i(0, exp.file_status[GIT_DELTA_MODIFIED]);
 cl_assert_equal_i(0, exp.hunks);

 git_diff_free(diff);



 cl_assert(cl_toggle_filemode("issue_592/a.txt"));

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), ((void*)0)));

 memset(&exp, 0, sizeof(exp));
 cl_git_pass(git_diff_foreach(diff,
  diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

 cl_assert_equal_i(0, exp.files);
 cl_assert_equal_i(0, exp.file_status[GIT_DELTA_MODIFIED]);
 cl_assert_equal_i(0, exp.hunks);

 git_diff_free(diff);

 cl_assert(cl_toggle_filemode("issue_592/a.txt"));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ git_diff_options ;
typedef int git_diff ;
typedef int exp ;
struct TYPE_8__ {int * file_status; int files; } ;
typedef TYPE_2__ diff_expects ;


 size_t GIT_DELTA_UNTRACKED ;
 int GIT_DIFF_INCLUDE_UNTRACKED ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_DIFF_RECURSE_UNTRACKED_DIRS ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int diff_binary_cb ;
 int diff_file_cb ;
 int diff_hunk_cb ;
 int diff_line_cb ;
 int g_repo ;
 int git_diff_foreach (int *,int ,int ,int ,int ,TYPE_2__*) ;
 int git_diff_free (int *) ;
 int git_diff_tree_to_workdir (int **,int ,int *,TYPE_1__*) ;
 int memset (TYPE_2__*,int ,int) ;

void test_diff_workdir__to_null_tree(void)
{
 git_diff *diff;
 diff_expects exp;
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;

 opts.flags = GIT_DIFF_INCLUDE_UNTRACKED |
  GIT_DIFF_RECURSE_UNTRACKED_DIRS;

 g_repo = cl_git_sandbox_init("status");

 cl_git_pass(git_diff_tree_to_workdir(&diff, g_repo, ((void*)0), &opts));

 memset(&exp, 0, sizeof(exp));

 cl_git_pass(git_diff_foreach(
  diff, diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &exp));

 cl_assert_equal_i(exp.files, exp.file_status[GIT_DELTA_UNTRACKED]);

 git_diff_free(diff);
}

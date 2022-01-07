
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char** strings; int count; } ;
struct TYPE_10__ {int context_lines; int interhunk_lines; int flags; TYPE_1__ pathspec; } ;
typedef TYPE_2__ git_diff_options ;
typedef int git_diff ;
typedef int exp ;
struct TYPE_11__ {int * file_status; int files; } ;
typedef TYPE_3__ diff_expects ;


 size_t GIT_DELTA_ADDED ;
 size_t GIT_DELTA_DELETED ;
 size_t GIT_DELTA_IGNORED ;
 size_t GIT_DELTA_MODIFIED ;
 size_t GIT_DELTA_UNTRACKED ;
 int GIT_DIFF_INCLUDE_IGNORED ;
 int GIT_DIFF_INCLUDE_UNTRACKED ;
 TYPE_2__ GIT_DIFF_OPTIONS_INIT ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int diff_file_cb ;
 int diff_foreach_via_iterator (int *,int ,int *,int *,int *,TYPE_3__*) ;
 int g_repo ;
 int git_diff_foreach (int *,int ,int *,int *,int *,TYPE_3__*) ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int ,int *,TYPE_2__*) ;
 int memset (TYPE_3__*,int ,int) ;

void test_diff_workdir__to_index_with_pathspec(void)
{
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0);
 diff_expects exp;
 char *pathspec = ((void*)0);
 int use_iterator;

 g_repo = cl_git_sandbox_init("status");

 opts.context_lines = 3;
 opts.interhunk_lines = 1;
 opts.flags |= GIT_DIFF_INCLUDE_IGNORED | GIT_DIFF_INCLUDE_UNTRACKED;
 opts.pathspec.strings = &pathspec;
 opts.pathspec.count = 1;

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));

 for (use_iterator = 0; use_iterator <= 1; use_iterator++) {
  memset(&exp, 0, sizeof(exp));

  if (use_iterator)
   cl_git_pass(diff_foreach_via_iterator(
    diff, diff_file_cb, ((void*)0), ((void*)0), ((void*)0), &exp));
  else
   cl_git_pass(git_diff_foreach(diff, diff_file_cb, ((void*)0), ((void*)0), ((void*)0), &exp));

  cl_assert_equal_i(13, exp.files);
  cl_assert_equal_i(0, exp.file_status[GIT_DELTA_ADDED]);
  cl_assert_equal_i(4, exp.file_status[GIT_DELTA_DELETED]);
  cl_assert_equal_i(4, exp.file_status[GIT_DELTA_MODIFIED]);
  cl_assert_equal_i(1, exp.file_status[GIT_DELTA_IGNORED]);
  cl_assert_equal_i(4, exp.file_status[GIT_DELTA_UNTRACKED]);
 }

 git_diff_free(diff);

 pathspec = "modified_file";

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));

 for (use_iterator = 0; use_iterator <= 1; use_iterator++) {
  memset(&exp, 0, sizeof(exp));

  if (use_iterator)
   cl_git_pass(diff_foreach_via_iterator(
    diff, diff_file_cb, ((void*)0), ((void*)0), ((void*)0), &exp));
  else
   cl_git_pass(git_diff_foreach(diff, diff_file_cb, ((void*)0), ((void*)0), ((void*)0), &exp));

  cl_assert_equal_i(1, exp.files);
  cl_assert_equal_i(0, exp.file_status[GIT_DELTA_ADDED]);
  cl_assert_equal_i(0, exp.file_status[GIT_DELTA_DELETED]);
  cl_assert_equal_i(1, exp.file_status[GIT_DELTA_MODIFIED]);
  cl_assert_equal_i(0, exp.file_status[GIT_DELTA_IGNORED]);
  cl_assert_equal_i(0, exp.file_status[GIT_DELTA_UNTRACKED]);
 }

 git_diff_free(diff);

 pathspec = "subdir";

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));

 for (use_iterator = 0; use_iterator <= 1; use_iterator++) {
  memset(&exp, 0, sizeof(exp));

  if (use_iterator)
   cl_git_pass(diff_foreach_via_iterator(
    diff, diff_file_cb, ((void*)0), ((void*)0), ((void*)0), &exp));
  else
   cl_git_pass(git_diff_foreach(diff, diff_file_cb, ((void*)0), ((void*)0), ((void*)0), &exp));

  cl_assert_equal_i(3, exp.files);
  cl_assert_equal_i(0, exp.file_status[GIT_DELTA_ADDED]);
  cl_assert_equal_i(1, exp.file_status[GIT_DELTA_DELETED]);
  cl_assert_equal_i(1, exp.file_status[GIT_DELTA_MODIFIED]);
  cl_assert_equal_i(0, exp.file_status[GIT_DELTA_IGNORED]);
  cl_assert_equal_i(1, exp.file_status[GIT_DELTA_UNTRACKED]);
 }

 git_diff_free(diff);

 pathspec = "*_deleted";

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));

 for (use_iterator = 0; use_iterator <= 1; use_iterator++) {
  memset(&exp, 0, sizeof(exp));

  if (use_iterator)
   cl_git_pass(diff_foreach_via_iterator(
    diff, diff_file_cb, ((void*)0), ((void*)0), ((void*)0), &exp));
  else
   cl_git_pass(git_diff_foreach(diff, diff_file_cb, ((void*)0), ((void*)0), ((void*)0), &exp));

  cl_assert_equal_i(2, exp.files);
  cl_assert_equal_i(0, exp.file_status[GIT_DELTA_ADDED]);
  cl_assert_equal_i(2, exp.file_status[GIT_DELTA_DELETED]);
  cl_assert_equal_i(0, exp.file_status[GIT_DELTA_MODIFIED]);
  cl_assert_equal_i(0, exp.file_status[GIT_DELTA_IGNORED]);
  cl_assert_equal_i(0, exp.file_status[GIT_DELTA_UNTRACKED]);
 }

 git_diff_free(diff);
}

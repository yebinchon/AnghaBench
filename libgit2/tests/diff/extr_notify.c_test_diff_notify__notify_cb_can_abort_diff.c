
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char** strings; int count; } ;
struct TYPE_6__ {int flags; TYPE_1__ pathspec; int notify_cb; } ;
typedef TYPE_2__ git_diff_options ;
typedef int git_diff ;


 int GIT_DIFF_INCLUDE_IGNORED ;
 int GIT_DIFF_INCLUDE_UNTRACKED ;
 TYPE_2__ GIT_DIFF_OPTIONS_INIT ;
 int abort_diff ;
 int cl_git_fail_with (int ,int) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_diff_index_to_workdir (int **,int ,int *,TYPE_2__*) ;

void test_diff_notify__notify_cb_can_abort_diff(void)
{
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0);
 char *pathspec = ((void*)0);

 g_repo = cl_git_sandbox_init("status");

 opts.flags |= GIT_DIFF_INCLUDE_IGNORED | GIT_DIFF_INCLUDE_UNTRACKED;
 opts.notify_cb = abort_diff;
 opts.pathspec.strings = &pathspec;
 opts.pathspec.count = 1;

 pathspec = "file_deleted";
 cl_git_fail_with(
  git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts), -42);

 pathspec = "staged_changes_modified_file";
 cl_git_fail_with(
  git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts), -42);
}

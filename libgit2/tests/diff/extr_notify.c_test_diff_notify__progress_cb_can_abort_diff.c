
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int progress_cb; } ;
typedef TYPE_1__ git_diff_options ;
typedef int git_diff ;


 int GIT_DIFF_INCLUDE_IGNORED ;
 int GIT_DIFF_INCLUDE_UNTRACKED ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int cl_git_fail_with (int ,int) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_diff_index_to_workdir (int **,int ,int *,TYPE_1__*) ;
 int progress_abort_diff ;

void test_diff_notify__progress_cb_can_abort_diff(void)
{
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0);

 g_repo = cl_git_sandbox_init("status");

 opts.flags |= GIT_DIFF_INCLUDE_IGNORED | GIT_DIFF_INCLUDE_UNTRACKED;
 opts.progress_cb = progress_abort_diff;

 cl_git_fail_with(
  git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts), -42);
}

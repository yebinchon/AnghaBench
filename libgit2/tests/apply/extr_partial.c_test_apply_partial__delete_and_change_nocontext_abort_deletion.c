
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ context_lines; } ;
typedef TYPE_1__ git_diff_options ;


 int FILE_DELETE_AND_CHANGE ;
 int FILE_ORIGINAL ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int abort_deletion ;
 int apply_buf (int ,char*,int ,char*,int ,TYPE_1__*,int ,int *) ;
 int cl_git_fail (int ) ;

void test_apply_partial__delete_and_change_nocontext_abort_deletion(void)
{
 git_diff_options diff_opts = GIT_DIFF_OPTIONS_INIT;
 diff_opts.context_lines = 0;

 cl_git_fail(apply_buf(
  FILE_ORIGINAL, "file.txt",
  FILE_DELETE_AND_CHANGE, "file.txt",
  FILE_ORIGINAL, &diff_opts, abort_deletion, ((void*)0)));
}

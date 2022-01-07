
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ context_lines; } ;
typedef TYPE_1__ git_diff_options ;


 int FILE_CHANGE_MIDDLE ;
 int FILE_ORIGINAL ;
 int FILE_PREPEND_AND_CHANGE ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int apply_buf (int ,char*,int ,char*,int ,TYPE_1__*,int ,int *) ;
 int cl_git_pass (int ) ;
 int skip_addition ;

void test_apply_partial__prepend_and_change_nocontext_skip_addition(void)
{
 git_diff_options diff_opts = GIT_DIFF_OPTIONS_INIT;
 diff_opts.context_lines = 0;

 cl_git_pass(apply_buf(
  FILE_ORIGINAL, "file.txt",
  FILE_PREPEND_AND_CHANGE, "file.txt",
  FILE_CHANGE_MIDDLE, &diff_opts, skip_addition, ((void*)0)));
}

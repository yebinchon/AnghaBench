
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ context_lines; } ;
typedef TYPE_1__ git_diff_options ;


 int FILE_CHANGE_MIDDLE_AND_LASTLINE ;
 int FILE_ORIGINAL ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int PATCH_ORIGINAL_TO_CHANGE_MIDDLE_AND_LASTLINE_NOCONTEXT ;
 int apply_buf (int ,char*,int ,char*,int ,TYPE_1__*) ;
 int cl_git_pass (int ) ;

void test_apply_fromdiff__change_middle_and_lastline_nocontext(void)
{
 git_diff_options diff_opts = GIT_DIFF_OPTIONS_INIT;
 diff_opts.context_lines = 0;

 cl_git_pass(apply_buf(
  FILE_ORIGINAL, "file.txt",
  FILE_CHANGE_MIDDLE_AND_LASTLINE, "file.txt",
  PATCH_ORIGINAL_TO_CHANGE_MIDDLE_AND_LASTLINE_NOCONTEXT, &diff_opts));
}

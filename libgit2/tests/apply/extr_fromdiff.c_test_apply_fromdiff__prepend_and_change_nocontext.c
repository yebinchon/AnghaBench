
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ context_lines; } ;
typedef TYPE_1__ git_diff_options ;


 int FILE_ORIGINAL ;
 int FILE_PREPEND_AND_CHANGE ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int PATCH_ORIGINAL_TO_PREPEND_AND_CHANGE_NOCONTEXT ;
 int apply_buf (int ,char*,int ,char*,int ,TYPE_1__*) ;
 int cl_git_pass (int ) ;

void test_apply_fromdiff__prepend_and_change_nocontext(void)
{
 git_diff_options diff_opts = GIT_DIFF_OPTIONS_INIT;
 diff_opts.context_lines = 0;

 cl_git_pass(apply_buf(
  FILE_ORIGINAL, "file.txt",
  FILE_PREPEND_AND_CHANGE, "file.txt",
  PATCH_ORIGINAL_TO_PREPEND_AND_CHANGE_NOCONTEXT, &diff_opts));
}

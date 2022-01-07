
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ context_lines; } ;
typedef TYPE_1__ git_diff_options ;


 int FILE_ORIGINAL ;
 int FILE_PREPEND ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int PATCH_ORIGINAL_TO_PREPEND_NOCONTEXT ;
 int cl_git_pass (int ) ;
 int strlen (int ) ;
 int validate_and_apply_patchfile (int ,int ,int ,int ,int ,TYPE_1__*,char*,int) ;

void test_apply_fromfile__prepend_nocontext(void)
{
 git_diff_options diff_opts = GIT_DIFF_OPTIONS_INIT;
 diff_opts.context_lines = 0;

 cl_git_pass(validate_and_apply_patchfile(
  FILE_ORIGINAL, strlen(FILE_ORIGINAL),
  FILE_PREPEND, strlen(FILE_PREPEND),
  PATCH_ORIGINAL_TO_PREPEND_NOCONTEXT, &diff_opts,
  "file.txt", 0100644));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILE_APPEND_NO_NL ;
 int FILE_ORIGINAL ;
 int PATCH_APPEND_NO_NL ;
 int cl_git_pass (int ) ;
 int strlen (int ) ;
 int validate_and_apply_patchfile (int ,int ,int ,int ,int ,int *,char*,int) ;

void test_apply_fromfile__append_no_nl(void)
{
 cl_git_pass(validate_and_apply_patchfile(
  FILE_ORIGINAL, strlen(FILE_ORIGINAL),
  FILE_APPEND_NO_NL, strlen(FILE_APPEND_NO_NL),
  PATCH_APPEND_NO_NL, ((void*)0), "file.txt", 0100644));
}

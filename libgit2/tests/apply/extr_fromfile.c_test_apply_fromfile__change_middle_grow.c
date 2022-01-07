
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILE_CHANGE_MIDDLE_GROW ;
 int FILE_ORIGINAL ;
 int PATCH_ORIGINAL_TO_CHANGE_MIDDLE_GROW ;
 int cl_git_pass (int ) ;
 int strlen (int ) ;
 int validate_and_apply_patchfile (int ,int ,int ,int ,int ,int *,char*,int) ;

void test_apply_fromfile__change_middle_grow(void)
{
 cl_git_pass(validate_and_apply_patchfile(
  FILE_ORIGINAL, strlen(FILE_ORIGINAL),
  FILE_CHANGE_MIDDLE_GROW, strlen(FILE_CHANGE_MIDDLE_GROW),
  PATCH_ORIGINAL_TO_CHANGE_MIDDLE_GROW, ((void*)0),
  "file.txt", 0100644));
}

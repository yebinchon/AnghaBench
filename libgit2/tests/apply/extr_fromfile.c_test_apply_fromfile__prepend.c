
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILE_ORIGINAL ;
 int FILE_PREPEND ;
 int PATCH_ORIGINAL_TO_PREPEND ;
 int cl_git_pass (int ) ;
 int strlen (int ) ;
 int validate_and_apply_patchfile (int ,int ,int ,int ,int ,int *,char*,int) ;

void test_apply_fromfile__prepend(void)
{
 cl_git_pass(validate_and_apply_patchfile(
  FILE_ORIGINAL, strlen(FILE_ORIGINAL),
  FILE_PREPEND, strlen(FILE_PREPEND),
  PATCH_ORIGINAL_TO_PREPEND, ((void*)0), "file.txt", 0100644));
}

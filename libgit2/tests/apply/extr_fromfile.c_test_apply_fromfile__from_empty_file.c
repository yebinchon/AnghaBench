
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILE_ORIGINAL ;
 int PATCH_EMPTY_FILE_TO_ORIGINAL ;
 int cl_git_pass (int ) ;
 int strlen (int ) ;
 int validate_and_apply_patchfile (char*,int ,int ,int ,int ,int *,char*,int) ;

void test_apply_fromfile__from_empty_file(void)
{
 cl_git_pass(validate_and_apply_patchfile(
  "", 0,
  FILE_ORIGINAL, strlen(FILE_ORIGINAL),
  PATCH_EMPTY_FILE_TO_ORIGINAL, ((void*)0), "file.txt", 0100644));
}

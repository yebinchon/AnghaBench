
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILE_ORIGINAL ;
 int PATCH_ORIGINAL_TO_EMPTY_FILE ;
 int cl_git_pass (int ) ;
 int strlen (int ) ;
 int validate_and_apply_patchfile (int ,int ,char*,int ,int ,int *,char*,int) ;

void test_apply_fromfile__to_empty_file(void)
{
 cl_git_pass(validate_and_apply_patchfile(
  FILE_ORIGINAL, strlen(FILE_ORIGINAL),
  "", 0,
  PATCH_ORIGINAL_TO_EMPTY_FILE, ((void*)0), "file.txt", 0100644));
}

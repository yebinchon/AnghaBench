
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILE_ORIGINAL ;
 int PATCH_RENAME_EXACT ;
 int apply_patchfile (int ,int ,int ,int ,int ,char*,int) ;
 int cl_git_pass (int ) ;
 int strlen (int ) ;

void test_apply_fromfile__rename_exact(void)
{
 cl_git_pass(apply_patchfile(
  FILE_ORIGINAL, strlen(FILE_ORIGINAL),
  FILE_ORIGINAL, strlen(FILE_ORIGINAL),
  PATCH_RENAME_EXACT, "newfile.txt", 0100644));
}

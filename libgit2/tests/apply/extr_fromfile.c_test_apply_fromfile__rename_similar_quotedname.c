
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILE_CHANGE_MIDDLE ;
 int FILE_ORIGINAL ;
 int PATCH_RENAME_SIMILAR_QUOTEDNAME ;
 int apply_patchfile (int ,int ,int ,int ,int ,char*,int) ;
 int cl_git_pass (int ) ;
 int strlen (int ) ;

void test_apply_fromfile__rename_similar_quotedname(void)
{
 cl_git_pass(apply_patchfile(
  FILE_ORIGINAL, strlen(FILE_ORIGINAL),
  FILE_CHANGE_MIDDLE, strlen(FILE_CHANGE_MIDDLE),
  PATCH_RENAME_SIMILAR_QUOTEDNAME, "foo\"bar.txt", 0100644));
}

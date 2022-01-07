
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILE_EMPTY_CONTEXT_MODIFIED ;
 int FILE_EMPTY_CONTEXT_ORIGINAL ;
 int PATCH_EMPTY_CONTEXT ;
 int apply_patchfile (int ,int ,int ,int ,int ,char*,int) ;
 int cl_git_pass (int ) ;
 int strlen (int ) ;

void test_apply_fromfile__empty_context(void)
{
 cl_git_pass(apply_patchfile(
  FILE_EMPTY_CONTEXT_ORIGINAL, strlen(FILE_EMPTY_CONTEXT_ORIGINAL),
  FILE_EMPTY_CONTEXT_MODIFIED, strlen(FILE_EMPTY_CONTEXT_MODIFIED),
  PATCH_EMPTY_CONTEXT,
  "file.txt", 0100644));
}

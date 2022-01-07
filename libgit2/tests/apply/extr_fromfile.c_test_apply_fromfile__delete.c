
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILE_ORIGINAL ;
 int PATCH_DELETE_ORIGINAL ;
 int cl_git_pass (int ) ;
 int strlen (int ) ;
 int validate_and_apply_patchfile (int ,int ,int *,int ,int ,int *,int *,int ) ;

void test_apply_fromfile__delete(void)
{
 cl_git_pass(validate_and_apply_patchfile(
  FILE_ORIGINAL, strlen(FILE_ORIGINAL),
  ((void*)0), 0,
  PATCH_DELETE_ORIGINAL, ((void*)0), ((void*)0), 0));
}

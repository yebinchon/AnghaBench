
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILE_BINARY_DELTA_MODIFIED ;
 int FILE_BINARY_DELTA_MODIFIED_LEN ;
 int PATCH_BINARY_DELETE ;
 int apply_patchfile (int ,int ,int *,int ,int ,int *,int ) ;
 int cl_git_pass (int ) ;

void test_apply_fromfile__binary_delete(void)
{
 cl_git_pass(apply_patchfile(
  FILE_BINARY_DELTA_MODIFIED, FILE_BINARY_DELTA_MODIFIED_LEN,
  ((void*)0), 0,
  PATCH_BINARY_DELETE, ((void*)0), 0));
}

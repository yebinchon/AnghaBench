
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILE_BINARY_DELTA_MODIFIED ;
 int FILE_BINARY_DELTA_MODIFIED_LEN ;
 int FILE_BINARY_DELTA_ORIGINAL ;
 int FILE_BINARY_DELTA_ORIGINAL_LEN ;
 int PATCH_BINARY_DELTA ;
 int apply_patchfile (int ,int ,int ,int ,int ,char*,int) ;
 int cl_git_pass (int ) ;

void test_apply_fromfile__binary_change_delta(void)
{
 cl_git_pass(apply_patchfile(
  FILE_BINARY_DELTA_ORIGINAL, FILE_BINARY_DELTA_ORIGINAL_LEN,
  FILE_BINARY_DELTA_MODIFIED, FILE_BINARY_DELTA_MODIFIED_LEN,
  PATCH_BINARY_DELTA, "binary.bin", 0100644));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILE_ORIGINAL ;
 int FILE_PREPEND_AND_APPEND ;
 int PATCH_ORIGINAL_TO_PREPEND_AND_APPEND ;
 int apply_buf (int ,char*,int ,char*,int ,int *) ;
 int cl_git_pass (int ) ;

void test_apply_fromdiff__prepend_and_append(void)
{
 cl_git_pass(apply_buf(
  FILE_ORIGINAL, "file.txt",
  FILE_PREPEND_AND_APPEND, "file.txt",
  PATCH_ORIGINAL_TO_PREPEND_AND_APPEND, ((void*)0)));
}

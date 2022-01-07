
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILE_APPEND ;
 int FILE_ORIGINAL ;
 int PATCH_ORIGINAL_TO_APPEND ;
 int apply_buf (int ,char*,int ,char*,int ,int *) ;
 int cl_git_pass (int ) ;

void test_apply_fromdiff__append(void)
{
 cl_git_pass(apply_buf(
  FILE_ORIGINAL, "file.txt",
  FILE_APPEND, "file.txt",
  PATCH_ORIGINAL_TO_APPEND, ((void*)0)));
}

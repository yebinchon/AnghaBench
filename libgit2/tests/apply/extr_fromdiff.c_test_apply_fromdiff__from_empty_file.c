
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILE_ORIGINAL ;
 int PATCH_EMPTY_FILE_TO_ORIGINAL ;
 int apply_buf (char*,int *,int ,char*,int ,int *) ;
 int cl_git_pass (int ) ;

void test_apply_fromdiff__from_empty_file(void)
{
 cl_git_pass(apply_buf(
  "", ((void*)0),
  FILE_ORIGINAL, "file.txt",
  PATCH_EMPTY_FILE_TO_ORIGINAL, ((void*)0)));
}

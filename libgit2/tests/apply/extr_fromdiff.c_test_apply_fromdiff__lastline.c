
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILE_CHANGE_LASTLINE ;
 int FILE_ORIGINAL ;
 int PATCH_ORIGINAL_TO_CHANGE_LASTLINE ;
 int apply_buf (int ,char*,int ,char*,int ,int *) ;
 int cl_git_pass (int ) ;

void test_apply_fromdiff__lastline(void)
{
 cl_git_pass(apply_buf(
  FILE_ORIGINAL, "file.txt",
  FILE_CHANGE_LASTLINE, "file.txt",
  PATCH_ORIGINAL_TO_CHANGE_LASTLINE, ((void*)0)));
}

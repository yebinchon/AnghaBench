
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILE_ORIGINAL ;
 int FILE_PREPEND_AND_CHANGE ;
 int apply_buf (int ,char*,int ,char*,int ,int *,int ,int *) ;
 int cl_git_pass (int ) ;
 int skip_addition ;

void test_apply_partial__prepend_and_change_skip_addition(void)
{
 cl_git_pass(apply_buf(
  FILE_ORIGINAL, "file.txt",
  FILE_PREPEND_AND_CHANGE, "file.txt",
  FILE_ORIGINAL, ((void*)0), skip_addition, ((void*)0)));
}

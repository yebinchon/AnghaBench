
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILE_ORIGINAL ;
 int apply_buf (int ,char*,int ,char*,char*,int *) ;
 int cl_git_pass (int ) ;

void test_apply_fromdiff__no_change(void)
{
 cl_git_pass(apply_buf(
  FILE_ORIGINAL, "file.txt",
  FILE_ORIGINAL, "file.txt",
  "", ((void*)0)));
}

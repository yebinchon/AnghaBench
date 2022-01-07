
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILE_ORIGINAL ;
 int PATCH_ORIGINAL_TO_EMPTY_FILE ;
 int apply_buf (int ,char*,char*,int *,int ,int *) ;
 int cl_git_pass (int ) ;

void test_apply_fromdiff__to_empty_file(void)
{
 cl_git_pass(apply_buf(
  FILE_ORIGINAL, "file.txt",
  "", ((void*)0),
  PATCH_ORIGINAL_TO_EMPTY_FILE, ((void*)0)));
}

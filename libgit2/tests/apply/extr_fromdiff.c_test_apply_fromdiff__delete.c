
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILE_ORIGINAL ;
 int PATCH_DELETE_ORIGINAL ;
 int apply_buf (int ,char*,int *,int *,int ,int *) ;
 int cl_git_pass (int ) ;

void test_apply_fromdiff__delete(void)
{
 cl_git_pass(apply_buf(
  FILE_ORIGINAL, "file.txt",
  ((void*)0), ((void*)0),
  PATCH_DELETE_ORIGINAL, ((void*)0)));
}

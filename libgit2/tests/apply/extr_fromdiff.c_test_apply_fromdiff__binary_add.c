
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; int ptr; } ;
typedef TYPE_1__ git_buf ;


 int FILE_BINARY_DELTA_MODIFIED ;
 int FILE_BINARY_DELTA_MODIFIED_LEN ;
 TYPE_1__ GIT_BUF_INIT ;
 int apply_gitbuf (int *,int *,TYPE_1__*,char*,int *,int *) ;
 int binary_opts ;
 int cl_git_pass (int ) ;

void test_apply_fromdiff__binary_add(void)
{
 git_buf newfile = GIT_BUF_INIT;

 newfile.ptr = FILE_BINARY_DELTA_MODIFIED;
 newfile.size = FILE_BINARY_DELTA_MODIFIED_LEN;

 cl_git_pass(apply_gitbuf(
  ((void*)0), ((void*)0),
  &newfile, "binary.bin",
  ((void*)0), &binary_opts));
}

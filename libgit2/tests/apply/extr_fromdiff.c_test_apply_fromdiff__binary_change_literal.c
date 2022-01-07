
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; int ptr; } ;
typedef TYPE_1__ git_buf ;


 int FILE_BINARY_LITERAL_MODIFIED ;
 int FILE_BINARY_LITERAL_MODIFIED_LEN ;
 int FILE_BINARY_LITERAL_ORIGINAL ;
 int FILE_BINARY_LITERAL_ORIGINAL_LEN ;
 TYPE_1__ GIT_BUF_INIT ;
 int apply_gitbuf (TYPE_1__*,char*,TYPE_1__*,char*,int *,int *) ;
 int binary_opts ;
 int cl_git_pass (int ) ;

void test_apply_fromdiff__binary_change_literal(void)
{
 git_buf original = GIT_BUF_INIT, modified = GIT_BUF_INIT;

 original.ptr = FILE_BINARY_LITERAL_ORIGINAL;
 original.size = FILE_BINARY_LITERAL_ORIGINAL_LEN;

 modified.ptr = FILE_BINARY_LITERAL_MODIFIED;
 modified.size = FILE_BINARY_LITERAL_MODIFIED_LEN;

 cl_git_pass(apply_gitbuf(
  &original, "binary.bin",
  &modified, "binary.bin",
  ((void*)0), &binary_opts));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int GIT_DIFF_SHOW_BINARY ;
 TYPE_1__ binary_opts ;
 int cl_git_sandbox_init (char*) ;
 int repo ;

void test_apply_fromdiff__initialize(void)
{
 repo = cl_git_sandbox_init("renames");

 binary_opts.flags |= GIT_DIFF_SHOW_BINARY;
}

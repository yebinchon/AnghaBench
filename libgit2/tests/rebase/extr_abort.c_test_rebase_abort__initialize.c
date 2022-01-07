
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_sandbox_init (char*) ;
 int repo ;

void test_rebase_abort__initialize(void)
{
 repo = cl_git_sandbox_init("rebase");
}

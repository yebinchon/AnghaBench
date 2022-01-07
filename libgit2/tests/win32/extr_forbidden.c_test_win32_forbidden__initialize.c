
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_sandbox_init (int ) ;
 int repo ;
 int repo_name ;

void test_win32_forbidden__initialize(void)
{
 repo = cl_git_sandbox_init(repo_name);
}

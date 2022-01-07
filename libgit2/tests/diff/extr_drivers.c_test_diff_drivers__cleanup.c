
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_sandbox_cleanup () ;
 int * g_repo ;

void test_diff_drivers__cleanup(void)
{
 cl_git_sandbox_cleanup();
 g_repo = ((void*)0);
}

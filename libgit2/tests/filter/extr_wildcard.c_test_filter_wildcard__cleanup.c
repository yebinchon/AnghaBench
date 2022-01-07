
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_cleanup () ;
 int * g_repo ;
 int git_filter_unregister (char*) ;

void test_filter_wildcard__cleanup(void)
{
 cl_git_pass(git_filter_unregister("wildcard"));

 cl_git_sandbox_cleanup();
 g_repo = ((void*)0);
}

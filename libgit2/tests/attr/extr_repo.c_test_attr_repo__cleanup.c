
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_sandbox_cleanup () ;
 int cl_sandbox_set_search_path_defaults () ;
 int * g_repo ;

void test_attr_repo__cleanup(void)
{
 cl_git_sandbox_cleanup();
 g_repo = ((void*)0);
 cl_sandbox_set_search_path_defaults();
}

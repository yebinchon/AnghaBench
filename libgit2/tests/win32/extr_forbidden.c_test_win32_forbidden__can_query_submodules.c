
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_pass (int ) ;
 int dummy_submodule_cb ;
 int git_submodule_foreach (int ,int ,int *) ;
 int repo ;

void test_win32_forbidden__can_query_submodules(void)
{
 cl_git_pass(git_submodule_foreach(repo, dummy_submodule_cb, ((void*)0)));
}

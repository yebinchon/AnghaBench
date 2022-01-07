
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_fail (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int foreach_cb ;
 int g_repo ;
 int git_submodule_foreach (int ,int ,int *) ;

void test_submodule_lookup__duplicated_path(void)
{
 cl_git_rewritefile("submod2/.gitmodules",
      "[submodule \"sm1\"]\n"
      "    path = duplicated-path\n"
      "    url = sm1\n"
      "[submodule \"sm2\"]\n"
      "    path = duplicated-path\n"
      "    url = sm2\n");

 cl_git_fail(git_submodule_foreach(g_repo, foreach_cb, ((void*)0)));
}

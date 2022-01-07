
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sm_lookup_data ;
typedef int git_submodule ;
typedef int data ;


 int cl_git_fail (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int g_repo ;
 int git_submodule_foreach (int ,int ,int *) ;
 int git_submodule_lookup (int **,int ,char*) ;
 int memset (int *,int ,int) ;
 int sm_lookup_cb ;

void test_submodule_lookup__fail_invalid_gitmodules(void)
{
 git_submodule *sm;
 sm_lookup_data data;
 memset(&data, 0, sizeof(data));

 cl_git_rewritefile("submod2/.gitmodules",
      "[submodule \"Test_App\"\n"
      "    path = Test_App\n"
      "    url = ../Test_App\n");

 cl_git_fail(git_submodule_lookup(&sm, g_repo, "Test_App"));

 cl_git_fail(git_submodule_foreach(g_repo, sm_lookup_cb, &data));
}

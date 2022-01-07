
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule ;


 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int g_repo ;
 int git_submodule_free (int *) ;
 int git_submodule_lookup (int **,int ,char*) ;
 int git_submodule_name (int *) ;

void test_submodule_lookup__prefix_name(void)
{
 git_submodule *sm;

 cl_git_rewritefile("submod2/.gitmodules",
      "[submodule \"Test_App\"]\n"
      "    path = Test_App\n"
      "    url = ../Test_App\n"
      "[submodule \"Test_App2\"]\n"
      "    path = Test_App2\n"
      "    url = ../Test_App\n");

 cl_git_pass(git_submodule_lookup(&sm, g_repo, "Test_App"));
 cl_assert_equal_s("Test_App", git_submodule_name(sm));

 git_submodule_free(sm);

 cl_git_pass(git_submodule_lookup(&sm, g_repo, "Test_App2"));
 cl_assert_equal_s("Test_App2", git_submodule_name(sm));

 git_submodule_free(sm);
}

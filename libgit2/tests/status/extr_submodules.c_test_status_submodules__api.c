
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule ;


 scalar_t__ GIT_ENOTFOUND ;
 int cl_assert (int) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (scalar_t__) ;
 int g_repo ;
 int git_submodule_free (int *) ;
 scalar_t__ git_submodule_lookup (int **,int ,char*) ;
 int git_submodule_name (int *) ;
 int git_submodule_path (int *) ;
 int setup_fixture_submodules () ;

void test_status_submodules__api(void)
{
 git_submodule *sm;

 g_repo = setup_fixture_submodules();

 cl_assert(git_submodule_lookup(((void*)0), g_repo, "nonexistent") == GIT_ENOTFOUND);

 cl_assert(git_submodule_lookup(((void*)0), g_repo, "modified") == GIT_ENOTFOUND);

 cl_git_pass(git_submodule_lookup(&sm, g_repo, "testrepo"));
 cl_assert(sm != ((void*)0));
 cl_assert_equal_s("testrepo", git_submodule_name(sm));
 cl_assert_equal_s("testrepo", git_submodule_path(sm));
 git_submodule_free(sm);
}

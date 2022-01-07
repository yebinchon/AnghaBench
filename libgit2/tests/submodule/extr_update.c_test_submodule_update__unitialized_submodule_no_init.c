
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule_update_options ;
typedef int git_submodule ;


 int GIT_ERROR ;
 int GIT_SUBMODULE_UPDATE_OPTIONS_INIT ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_submodule_free (int *) ;
 int git_submodule_lookup (int **,int ,char*) ;
 int git_submodule_update (int *,int ,int *) ;
 int setup_fixture_submodule_simple () ;

void test_submodule_update__unitialized_submodule_no_init(void)
{
 git_submodule *sm;
 git_submodule_update_options update_options = GIT_SUBMODULE_UPDATE_OPTIONS_INIT;

 g_repo = setup_fixture_submodule_simple();


 cl_git_pass(git_submodule_lookup(&sm, g_repo, "testrepo"));


 cl_git_fail_with(
  GIT_ERROR,
  git_submodule_update(sm, 0, &update_options));

 git_submodule_free(sm);
}

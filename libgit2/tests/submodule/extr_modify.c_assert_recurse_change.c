
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule_recurse_t ;
typedef int git_submodule ;


 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_submodule_fetch_recurse_submodules (int *) ;
 int git_submodule_free (int *) ;
 int git_submodule_lookup (int **,int ,char*) ;
 int git_submodule_set_fetch_recurse_submodules (int ,char*,int ) ;

void assert_recurse_change(git_submodule_recurse_t recurse)
{
 git_submodule *sm;

 cl_git_pass(git_submodule_set_fetch_recurse_submodules(g_repo, "sm_changed_head", recurse));

 cl_git_pass(git_submodule_lookup(&sm, g_repo, "sm_changed_head"));
 cl_assert_equal_i(recurse, git_submodule_fetch_recurse_submodules(sm));
 git_submodule_free(sm);
}

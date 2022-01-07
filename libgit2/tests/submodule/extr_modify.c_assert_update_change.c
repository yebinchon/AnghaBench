
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule_update_t ;
typedef int git_submodule ;


 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_submodule_free (int *) ;
 int git_submodule_lookup (int **,int ,char*) ;
 int git_submodule_set_update (int ,char*,int ) ;
 int git_submodule_update_strategy (int *) ;

void assert_update_change(git_submodule_update_t update)
{
 git_submodule *sm;

 cl_git_pass(git_submodule_set_update(g_repo, "sm_changed_head", update));

 cl_git_pass(git_submodule_lookup(&sm, g_repo, "sm_changed_head"));
 cl_assert_equal_i(update, git_submodule_update_strategy(sm));
 git_submodule_free(sm);
}

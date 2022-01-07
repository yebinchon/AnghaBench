
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule_ignore_t ;
typedef int git_submodule ;


 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_submodule_free (int *) ;
 int git_submodule_ignore (int *) ;
 int git_submodule_lookup (int **,int ,char*) ;
 int git_submodule_set_ignore (int ,char*,int ) ;

void assert_ignore_change(git_submodule_ignore_t ignore)
{
 git_submodule *sm;

 cl_git_pass(git_submodule_set_ignore(g_repo, "sm_changed_head", ignore));

 cl_git_pass(git_submodule_lookup(&sm, g_repo, "sm_changed_head"));
 cl_assert_equal_i(ignore, git_submodule_ignore(sm));
 git_submodule_free(sm);
}

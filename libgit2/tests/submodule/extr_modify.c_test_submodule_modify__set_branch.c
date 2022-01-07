
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule ;


 int * SM_LIBGIT2_BRANCH ;
 int cl_assert (int ) ;
 int cl_assert_equal_s (int *,int *) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int * git_submodule_branch (int *) ;
 int git_submodule_free (int *) ;
 int git_submodule_lookup (int **,int ,char*) ;
 int git_submodule_set_branch (int ,char*,int *) ;

void test_submodule_modify__set_branch(void)
{
 git_submodule *sm;

 cl_git_pass(git_submodule_lookup(&sm, g_repo, "sm_changed_head"));
 cl_assert(git_submodule_branch(sm) == ((void*)0));
 git_submodule_free(sm);

 cl_git_pass(git_submodule_set_branch(g_repo, "sm_changed_head", SM_LIBGIT2_BRANCH));
 cl_git_pass(git_submodule_lookup(&sm, g_repo, "sm_changed_head"));
 cl_assert_equal_s(SM_LIBGIT2_BRANCH, git_submodule_branch(sm));
 git_submodule_free(sm);

 cl_git_pass(git_submodule_set_branch(g_repo, "sm_changed_head", ((void*)0)));
 cl_git_pass(git_submodule_lookup(&sm, g_repo, "sm_changed_head"));
 cl_assert(git_submodule_branch(sm) == ((void*)0));
 git_submodule_free(sm);
}

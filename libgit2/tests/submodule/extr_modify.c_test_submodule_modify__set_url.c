
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule ;


 int SM_LIBGIT2_URL ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_submodule_free (int *) ;
 int git_submodule_lookup (int **,int ,char*) ;
 int git_submodule_set_url (int ,char*,int ) ;
 int git_submodule_url (int *) ;

void test_submodule_modify__set_url(void)
{
 git_submodule *sm;

 cl_git_pass(git_submodule_set_url(g_repo, "sm_changed_head", SM_LIBGIT2_URL));
 cl_git_pass(git_submodule_lookup(&sm, g_repo, "sm_changed_head"));
 cl_assert_equal_s(SM_LIBGIT2_URL, git_submodule_url(sm));
 git_submodule_free(sm);
}

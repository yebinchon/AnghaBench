
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int GIT_EINVALIDSPEC ;
 int GIT_HEAD_FILE ;
 int GIT_REFERENCE_SYMBOLIC ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,int ) ;
 int git_reference_symbolic_create (int **,int ,int ,char*,int,int *) ;
 int git_reference_type (int *) ;

void test_refs_update__updating_the_target_of_a_symref_with_an_invalid_name_returns_EINVALIDSPEC(void)
{
 git_reference *head;

 cl_git_pass(git_reference_lookup(&head, g_repo, GIT_HEAD_FILE));
 cl_assert_equal_i(GIT_REFERENCE_SYMBOLIC, git_reference_type(head));
 git_reference_free(head);

 cl_assert_equal_i(GIT_EINVALIDSPEC, git_reference_symbolic_create(&head, g_repo, GIT_HEAD_FILE, "refs/heads/inv@{id", 1, ((void*)0)));
}

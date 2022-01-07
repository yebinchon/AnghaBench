
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int GIT_HEAD_FILE ;
 int GIT_REFERENCE_SYMBOLIC ;
 int LIVE_EMPTYREPO_URL ;
 int cl_assert_equal_i (int,int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int g_options ;
 int g_repo ;
 int git_clone (int *,int ,char*,int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,int ) ;
 int git_reference_symbolic_target (int *) ;
 int git_reference_type (int *) ;
 int git_repository_head_unborn (int ) ;
 int git_repository_is_empty (int ) ;

void test_online_clone__empty_repository(void)
{
 git_reference *head;

 cl_git_pass(git_clone(&g_repo, LIVE_EMPTYREPO_URL, "./foo", &g_options));

 cl_assert_equal_i(1, git_repository_is_empty(g_repo));
 cl_assert_equal_i(1, git_repository_head_unborn(g_repo));

 cl_git_pass(git_reference_lookup(&head, g_repo, GIT_HEAD_FILE));
 cl_assert_equal_i(GIT_REFERENCE_SYMBOLIC, git_reference_type(head));
 cl_assert_equal_s("refs/heads/master", git_reference_symbolic_target(head));

 git_reference_free(head);
}

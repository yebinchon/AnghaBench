
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int GIT_RESET_SOFT ;
 int KNOWN_COMMIT_IN_BARE_REPO ;
 int NON_EXISTING_HEAD ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int git_oid_streq (int ,int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,int ) ;
 int git_reference_target (int *) ;
 int git_repository_head_unborn (int ) ;
 int git_reset (int ,int ,int ,int *) ;
 int git_revparse_single (int *,int ,int ) ;
 int make_head_unborn (int ,int ) ;
 int repo ;
 int target ;

void test_reset_soft__resetting_against_an_unborn_head_repo_makes_the_head_no_longer_unborn(void)
{
 git_reference *head;

 cl_git_pass(git_revparse_single(&target, repo, KNOWN_COMMIT_IN_BARE_REPO));

 make_head_unborn(repo, NON_EXISTING_HEAD);

 cl_assert_equal_i(1, git_repository_head_unborn(repo));

 cl_git_pass(git_reset(repo, target, GIT_RESET_SOFT, ((void*)0)));

 cl_assert_equal_i(0, git_repository_head_unborn(repo));

 cl_git_pass(git_reference_lookup(&head, repo, NON_EXISTING_HEAD));
 cl_assert_equal_i(0, git_oid_streq(git_reference_target(head), KNOWN_COMMIT_IN_BARE_REPO));

 git_reference_free(head);
}

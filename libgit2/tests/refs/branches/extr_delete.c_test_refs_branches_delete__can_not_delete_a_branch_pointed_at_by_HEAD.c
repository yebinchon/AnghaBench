
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int GIT_BRANCH_LOCAL ;
 int GIT_HEAD_FILE ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_branch_delete (int *) ;
 int git_branch_lookup (int **,int ,char*,int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,int ) ;
 int git_reference_symbolic_target (int *) ;
 int repo ;

void test_refs_branches_delete__can_not_delete_a_branch_pointed_at_by_HEAD(void)
{
 git_reference *head;
 git_reference *branch;


 cl_git_pass(git_reference_lookup(&head, repo, GIT_HEAD_FILE));
 cl_assert_equal_s("refs/heads/master", git_reference_symbolic_target(head));
 git_reference_free(head);

 cl_git_pass(git_branch_lookup(&branch, repo, "master", GIT_BRANCH_LOCAL));
 cl_git_fail(git_branch_delete(branch));
 git_reference_free(branch);
}

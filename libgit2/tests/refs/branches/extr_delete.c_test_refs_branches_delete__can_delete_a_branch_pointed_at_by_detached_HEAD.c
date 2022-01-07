
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int GIT_BRANCH_LOCAL ;
 int GIT_HEAD_FILE ;
 int GIT_REFERENCE_SYMBOLIC ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int git_branch_delete (int *) ;
 int git_branch_lookup (int **,int ,char*,int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,int ) ;
 int git_reference_symbolic_target (int *) ;
 int git_reference_type (int *) ;
 int git_repository_detach_head (int ) ;
 int repo ;

void test_refs_branches_delete__can_delete_a_branch_pointed_at_by_detached_HEAD(void)
{
 git_reference *head, *branch;

 cl_git_pass(git_reference_lookup(&head, repo, GIT_HEAD_FILE));
 cl_assert_equal_i(GIT_REFERENCE_SYMBOLIC, git_reference_type(head));
 cl_assert_equal_s("refs/heads/master", git_reference_symbolic_target(head));
 git_reference_free(head);


 git_repository_detach_head(repo);

 cl_git_pass(git_branch_lookup(&branch, repo, "master", GIT_BRANCH_LOCAL));
 cl_git_pass(git_branch_delete(branch));
 git_reference_free(branch);
}

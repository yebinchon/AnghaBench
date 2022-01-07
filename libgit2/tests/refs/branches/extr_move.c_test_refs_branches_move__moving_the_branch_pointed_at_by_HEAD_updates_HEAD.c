
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int git_branch_move (int **,int *,char*,int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_reference_name (int *) ;
 int git_repository_head (int **,int ) ;
 int repo ;

void test_refs_branches_move__moving_the_branch_pointed_at_by_HEAD_updates_HEAD(void)
{
 git_reference *branch;
 git_reference *new_branch;

 cl_git_pass(git_reference_lookup(&branch, repo, "refs/heads/master"));
 cl_git_pass(git_branch_move(&new_branch, branch, "master2", 0));
 git_reference_free(branch);
 git_reference_free(new_branch);

 cl_git_pass(git_repository_head(&branch, repo));
 cl_assert_equal_s("refs/heads/master2", git_reference_name(branch));
 git_reference_free(branch);
}

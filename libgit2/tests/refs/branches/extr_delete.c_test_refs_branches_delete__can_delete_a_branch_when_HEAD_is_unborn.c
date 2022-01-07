
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int GIT_BRANCH_LOCAL ;
 int NON_EXISTING_HEAD ;
 int cl_git_pass (int ) ;
 int git_branch_delete (int *) ;
 int git_branch_lookup (int **,int ,char*,int ) ;
 int git_reference_free (int *) ;
 int make_head_unborn (int ,int ) ;
 int repo ;

void test_refs_branches_delete__can_delete_a_branch_when_HEAD_is_unborn(void)
{
 git_reference *branch;

 make_head_unborn(repo, NON_EXISTING_HEAD);

 cl_git_pass(git_branch_lookup(&branch, repo, "br2", GIT_BRANCH_LOCAL));
 cl_git_pass(git_branch_delete(branch));
 git_reference_free(branch);
}

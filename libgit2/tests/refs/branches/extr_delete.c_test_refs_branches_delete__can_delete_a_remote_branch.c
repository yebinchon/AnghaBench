
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int GIT_BRANCH_REMOTE ;
 int cl_git_pass (int ) ;
 int git_branch_delete (int *) ;
 int git_branch_lookup (int **,int ,char*,int ) ;
 int git_reference_free (int *) ;
 int repo ;

void test_refs_branches_delete__can_delete_a_remote_branch(void)
{
 git_reference *branch;
 cl_git_pass(git_branch_lookup(&branch, repo, "nulltoken/master", GIT_BRANCH_REMOTE));
 cl_git_pass(git_branch_delete(branch));
 git_reference_free(branch);
}

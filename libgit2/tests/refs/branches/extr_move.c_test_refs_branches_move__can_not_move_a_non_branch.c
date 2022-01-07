
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int NEW_BRANCH_NAME ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_branch_move (int **,int *,int ,int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int repo ;

void test_refs_branches_move__can_not_move_a_non_branch(void)
{
 git_reference *tag, *new_ref;

 cl_git_pass(git_reference_lookup(&tag, repo, "refs/tags/e90810b"));
 cl_git_fail(git_branch_move(&new_ref, tag, NEW_BRANCH_NAME, 0));

 git_reference_free(tag);
}

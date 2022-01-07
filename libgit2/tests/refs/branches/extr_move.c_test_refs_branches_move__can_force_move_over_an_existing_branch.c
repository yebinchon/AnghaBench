
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int cl_git_pass (int ) ;
 int git_branch_move (int **,int *,char*,int) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int repo ;

void test_refs_branches_move__can_force_move_over_an_existing_branch(void)
{
 git_reference *original_ref, *new_ref;

 cl_git_pass(git_reference_lookup(&original_ref, repo, "refs/heads/br2"));

 cl_git_pass(git_branch_move(&new_ref, original_ref, "master", 1));

 git_reference_free(original_ref);
 git_reference_free(new_ref);
}

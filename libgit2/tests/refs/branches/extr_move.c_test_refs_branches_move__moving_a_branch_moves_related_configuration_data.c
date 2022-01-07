
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int GIT_BRANCH_LOCAL ;
 int assert_config_entry_existence (int ,char*,int) ;
 int cl_git_pass (int ) ;
 int git_branch_lookup (int **,int ,char*,int ) ;
 int git_branch_move (int **,int *,char*,int ) ;
 int git_reference_free (int *) ;
 int repo ;

void test_refs_branches_move__moving_a_branch_moves_related_configuration_data(void)
{
 git_reference *branch;
 git_reference *new_branch;

 cl_git_pass(git_branch_lookup(&branch, repo, "track-local", GIT_BRANCH_LOCAL));

 assert_config_entry_existence(repo, "branch.track-local.remote", 1);
 assert_config_entry_existence(repo, "branch.track-local.merge", 1);
 assert_config_entry_existence(repo, "branch.moved.remote", 0);
 assert_config_entry_existence(repo, "branch.moved.merge", 0);

 cl_git_pass(git_branch_move(&new_branch, branch, "moved", 0));
 git_reference_free(branch);

 assert_config_entry_existence(repo, "branch.track-local.remote", 0);
 assert_config_entry_existence(repo, "branch.track-local.merge", 0);
 assert_config_entry_existence(repo, "branch.moved.remote", 1);
 assert_config_entry_existence(repo, "branch.moved.merge", 1);

 git_reference_free(new_branch);
}

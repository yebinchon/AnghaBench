
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int GIT_BRANCH_LOCAL ;
 int assert_config_entry_existence (int ,char*,int) ;
 int cl_git_pass (int ) ;
 int git_branch_delete (int *) ;
 int git_branch_lookup (int **,int ,char*,int ) ;
 int git_reference_free (int *) ;
 int repo ;

void test_refs_branches_delete__deleting_a_branch_removes_related_configuration_data(void)
{
 git_reference *branch;

 assert_config_entry_existence(repo, "branch.track-local.remote", 1);
 assert_config_entry_existence(repo, "branch.track-local.merge", 1);

 cl_git_pass(git_branch_lookup(&branch, repo, "track-local", GIT_BRANCH_LOCAL));
 cl_git_pass(git_branch_delete(branch));
 git_reference_free(branch);

 assert_config_entry_existence(repo, "branch.track-local.remote", 0);
 assert_config_entry_existence(repo, "branch.track-local.merge", 0);
}

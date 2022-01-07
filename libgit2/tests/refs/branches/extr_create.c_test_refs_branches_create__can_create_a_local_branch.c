
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NEW_BRANCH_NAME ;
 int branch ;
 int cl_git_pass (int ) ;
 int git_branch_create (int *,int ,int ,int ,int ) ;
 int git_commit_id (int ) ;
 int git_oid_cmp (int ,int ) ;
 int git_reference_target (int ) ;
 int repo ;
 int retrieve_known_commit (int *,int ) ;
 int target ;

void test_refs_branches_create__can_create_a_local_branch(void)
{
 retrieve_known_commit(&target, repo);

 cl_git_pass(git_branch_create(&branch, repo, NEW_BRANCH_NAME, target, 0));
 cl_git_pass(git_oid_cmp(git_reference_target(branch), git_commit_id(target)));
}

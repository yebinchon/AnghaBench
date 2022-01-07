
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int branch ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int git_branch_create (int *,int ,char*,int ,int) ;
 int git_commit_id (int ) ;
 int git_oid_cmp (int ,int ) ;
 int git_reference_name (int ) ;
 int git_reference_target (int ) ;
 int repo ;
 int retrieve_known_commit (int *,int ) ;
 int target ;

void test_refs_branches_create__can_force_create_over_an_existing_branch(void)
{
 retrieve_known_commit(&target, repo);

 cl_git_pass(git_branch_create(&branch, repo, "br2", target, 1));
 cl_git_pass(git_oid_cmp(git_reference_target(branch), git_commit_id(target)));
 cl_assert_equal_s("refs/heads/br2", git_reference_name(branch));
}

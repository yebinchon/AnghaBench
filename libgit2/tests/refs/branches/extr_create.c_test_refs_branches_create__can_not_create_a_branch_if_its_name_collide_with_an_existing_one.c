
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_EEXISTS ;
 int branch ;
 int cl_assert_equal_i (int ,int ) ;
 int git_branch_create (int *,int ,char*,int ,int ) ;
 int repo ;
 int retrieve_known_commit (int *,int ) ;
 int target ;

void test_refs_branches_create__can_not_create_a_branch_if_its_name_collide_with_an_existing_one(void)
{
 retrieve_known_commit(&target, repo);

 cl_assert_equal_i(GIT_EEXISTS, git_branch_create(&branch, repo, "br2", target, 0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int branch ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int delete_head (int ) ;
 int git_branch_is_head (int ) ;
 int git_reference_lookup (int *,int ,char*) ;
 int repo ;

void test_refs_branches_ishead__can_properly_handle_missing_HEAD(void)
{
 delete_head(repo);

 cl_git_pass(git_reference_lookup(&branch, repo, "refs/heads/master"));

 cl_assert_equal_i(0, git_branch_is_head(branch));
}

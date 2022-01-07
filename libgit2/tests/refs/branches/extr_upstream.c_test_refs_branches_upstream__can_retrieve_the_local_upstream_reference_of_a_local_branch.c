
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int branch ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int git_branch_upstream (int *,int ) ;
 int git_reference_lookup (int *,int ,char*) ;
 int git_reference_name (int ) ;
 int repo ;
 int upstream ;

void test_refs_branches_upstream__can_retrieve_the_local_upstream_reference_of_a_local_branch(void)
{
 cl_git_pass(git_reference_lookup(&branch, repo, "refs/heads/track-local"));

 cl_git_pass(git_branch_upstream(&upstream, branch));

 cl_assert_equal_s("refs/heads/master", git_reference_name(upstream));
}

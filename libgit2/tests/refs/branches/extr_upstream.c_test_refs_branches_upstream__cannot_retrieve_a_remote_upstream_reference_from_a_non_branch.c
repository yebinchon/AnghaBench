
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int branch ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_branch_upstream (int *,int ) ;
 int git_reference_lookup (int *,int ,char*) ;
 int repo ;
 int upstream ;

void test_refs_branches_upstream__cannot_retrieve_a_remote_upstream_reference_from_a_non_branch(void)
{
 cl_git_pass(git_reference_lookup(&branch, repo, "refs/tags/e90810b"));

 cl_git_fail(git_branch_upstream(&upstream, branch));
}

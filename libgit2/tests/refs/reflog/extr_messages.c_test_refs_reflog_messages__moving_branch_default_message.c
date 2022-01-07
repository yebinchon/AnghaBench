
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_oid ;


 int cl_git_pass (int ) ;
 int cl_reflog_check_entry (int ,int ,int ,char*,char*,int ,char*) ;
 int g_email ;
 int g_repo ;
 int git_branch_move (int **,int *,char*,int ) ;
 int git_oid_cpy (int *,int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_reference_name (int *) ;
 int git_reference_target (int *) ;

void test_refs_reflog_messages__moving_branch_default_message(void)
{
 git_reference *branch;
 git_reference *new_branch;
 git_oid id;

 cl_git_pass(git_reference_lookup(&branch, g_repo, "refs/heads/master"));
 git_oid_cpy(&id, git_reference_target(branch));
 cl_git_pass(git_branch_move(&new_branch, branch, "master2", 0));

 cl_reflog_check_entry(g_repo, git_reference_name(new_branch), 0,
  "a65fedf39aefe402d3bb6e24df4d4f5fe4547750",
  "a65fedf39aefe402d3bb6e24df4d4f5fe4547750",
  g_email,
  "branch: renamed refs/heads/master to refs/heads/master2");

 git_reference_free(branch);
 git_reference_free(new_branch);
}

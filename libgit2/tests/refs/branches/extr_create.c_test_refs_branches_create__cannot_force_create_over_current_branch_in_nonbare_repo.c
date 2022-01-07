
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_oid ;


 int GIT_BRANCH_LOCAL ;
 int * branch ;
 int cl_assert_equal_i (int,int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_fail_with (int,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_cleanup () ;
 int cl_git_sandbox_init (char*) ;
 int git_branch_create (int **,int ,char*,int ,int) ;
 int git_branch_is_head (int *) ;
 int git_branch_lookup (int **,int ,char*,int ) ;
 int git_oid_cmp (int *,int const*) ;
 int git_reference_free (int *) ;
 int git_reference_name (int *) ;
 int * git_reference_target (int *) ;
 int repo ;
 int retrieve_known_commit (int *,int ) ;
 int target ;

void test_refs_branches_create__cannot_force_create_over_current_branch_in_nonbare_repo(void)
{
 const git_oid *oid;
 git_reference *branch2;


 cl_git_sandbox_cleanup();
 repo = cl_git_sandbox_init("testrepo");
 retrieve_known_commit(&target, repo);

 cl_git_pass(git_branch_lookup(&branch2, repo, "master", GIT_BRANCH_LOCAL));
 cl_assert_equal_s("refs/heads/master", git_reference_name(branch2));
 cl_assert_equal_i(1, git_branch_is_head(branch2));
 oid = git_reference_target(branch2);

 cl_git_fail_with(-1, git_branch_create(&branch, repo, "master", target, 1));
 branch = ((void*)0);
 cl_git_pass(git_branch_lookup(&branch, repo, "master", GIT_BRANCH_LOCAL));
 cl_assert_equal_s("refs/heads/master", git_reference_name(branch));
 cl_git_pass(git_oid_cmp(git_reference_target(branch), oid));
 git_reference_free(branch2);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;


 int assert_config_entry_existence (int *,char*,int) ;
 int assert_config_entry_value (int *,char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_cleanup () ;
 int * cl_git_sandbox_init (char*) ;
 int git_branch_set_upstream (int *,char*) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int *,char*) ;

void test_refs_branches_upstream__set_unset_upstream(void)
{
 git_reference *branch;
 git_repository *repository;

 repository = cl_git_sandbox_init("testrepo.git");


 cl_git_pass(git_reference_lookup(&branch, repository, "refs/heads/test"));
 cl_git_pass(git_branch_set_upstream(branch, "test/master"));

 assert_config_entry_value(repository, "branch.test.remote", "test");
 assert_config_entry_value(repository, "branch.test.merge", "refs/heads/master");

 git_reference_free(branch);


 cl_git_pass(git_reference_lookup(&branch, repository, "refs/heads/test"));
 cl_git_pass(git_branch_set_upstream(branch, "master"));

 assert_config_entry_value(repository, "branch.test.remote", ".");
 assert_config_entry_value(repository, "branch.test.merge", "refs/heads/master");


 cl_git_pass(git_branch_set_upstream(branch, ((void*)0)));
 assert_config_entry_existence(repository, "branch.test.remote", 0);
 assert_config_entry_existence(repository, "branch.test.merge", 0);

 git_reference_free(branch);

 cl_git_pass(git_reference_lookup(&branch, repository, "refs/heads/master"));
 cl_git_pass(git_branch_set_upstream(branch, ((void*)0)));
 assert_config_entry_existence(repository, "branch.test.remote", 0);
 assert_config_entry_existence(repository, "branch.test.merge", 0);

 git_reference_free(branch);

 cl_git_sandbox_cleanup();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_remote ;
typedef int git_reference ;
typedef int git_config ;
struct TYPE_2__ {int message; } ;


 int GIT_ENOTFOUND ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_fail (int ) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_cleanup () ;
 int * cl_git_sandbox_init (char*) ;
 int git_branch_set_upstream (int *,char*) ;
 int git_branch_upstream (int **,int *) ;
 int git_config_set_string (int *,char*,char*) ;
 TYPE_1__* git_error_last () ;
 int git_reference_create (int **,int *,char*,int ,int,char*) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int *,char*) ;
 int git_reference_target (int *) ;
 int git_remote_add_push (int *,char*,char*) ;
 int git_remote_create_with_fetchspec (int **,int *,char*,char*,int *) ;
 int git_remote_free (int *) ;
 int git_repository_config (int **,int *) ;

void test_refs_branches_upstream__no_fetch_refspec(void)
{
 git_reference *ref, *branch;
 git_repository *repo;
 git_remote *remote;
 git_config *cfg;

 repo = cl_git_sandbox_init("testrepo.git");

 cl_git_pass(git_remote_create_with_fetchspec(&remote, repo, "matching", ".", ((void*)0)));
 cl_git_pass(git_remote_add_push(repo, "matching", ":"));

 cl_git_pass(git_reference_lookup(&branch, repo, "refs/heads/test"));
 cl_git_pass(git_reference_create(&ref, repo, "refs/remotes/matching/master", git_reference_target(branch), 1, "fetch"));
 cl_git_fail(git_branch_set_upstream(branch, "matching/master"));
 cl_assert_equal_s("could not determine remote for 'refs/remotes/matching/master'",
     git_error_last()->message);


 cl_git_pass(git_repository_config(&cfg, repo));
 cl_git_pass(git_config_set_string(cfg, "branch.test.remote", "matching"));
 cl_git_pass(git_config_set_string(cfg, "branch.test.merge", "refs/heads/master"));

 cl_git_fail_with(GIT_ENOTFOUND, git_branch_upstream(&ref, branch));

 git_reference_free(ref);
 git_reference_free(branch);
 git_remote_free(remote);

 cl_git_sandbox_cleanup();
}

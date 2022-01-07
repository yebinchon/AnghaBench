
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_config ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_cleanup () ;
 int * cl_git_sandbox_init (char*) ;
 int git_branch_upstream_remote (int *,int *,char*) ;
 int git_config_delete_entry (int *,char*) ;
 int git_config_set_string (int *,char*,char*) ;
 int git_repository_config (int **,int *) ;

void test_refs_branches_upstream__upstream_remote_empty_value(void)
{
 git_repository *repository;
 git_config *cfg;
 git_buf buf = GIT_BUF_INIT;

 repository = cl_git_sandbox_init("testrepo.git");
 cl_git_pass(git_repository_config(&cfg, repository));
 cl_git_pass(git_config_set_string(cfg, "branch.master.remote", ""));
 cl_git_fail_with(GIT_ENOTFOUND, git_branch_upstream_remote(&buf, repository, "refs/heads/master"));

 cl_git_pass(git_config_delete_entry(cfg, "branch.master.remote"));
 cl_git_fail_with(GIT_ENOTFOUND, git_branch_upstream_remote(&buf, repository, "refs/heads/master"));
 cl_git_sandbox_cleanup();
}

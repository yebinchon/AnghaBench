
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int cl_fixture_sandbox (char*) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int cl_set_cleanup (int ,char*) ;
 int cleanup_fixture_submodules ;
 int git_repository_reinit_filesystem (int *,int) ;
 int p_mkdir (char*,int) ;

git_repository *setup_fixture_submodule_with_path(void)
{
 git_repository *repo = cl_git_sandbox_init("submodule_with_path");

 cl_fixture_sandbox("testrepo.git");
 p_mkdir("submodule_with_path/lib", 0777);
 p_mkdir("submodule_with_path/lib/testrepo", 0777);

 cl_set_cleanup(cleanup_fixture_submodules, "testrepo.git");

 cl_git_pass(git_repository_reinit_filesystem(repo, 1));

 return repo;
}

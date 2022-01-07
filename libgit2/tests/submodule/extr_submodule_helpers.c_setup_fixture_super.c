
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
 int git_repository_workdir (int *) ;
 int p_mkdir (char*,int) ;
 int rewrite_gitmodules (int ) ;

git_repository *setup_fixture_super(void)
{
 git_repository *repo = cl_git_sandbox_init("super");

 cl_fixture_sandbox("sub.git");
 p_mkdir("super/sub", 0777);

 rewrite_gitmodules(git_repository_workdir(repo));

 cl_set_cleanup(cleanup_fixture_submodules, "sub.git");

 cl_git_pass(git_repository_reinit_filesystem(repo, 1));

 return repo;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule ;


 int assert_submodule_url (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_submodule_add_setup (int **,int ,char*,char*,int) ;
 int git_submodule_free (int *) ;

void test_submodule_add__url_relative_to_origin(void)
{
 git_submodule *sm;


 g_repo = cl_git_sandbox_init("testrepo2");

 cl_git_pass(
  git_submodule_add_setup(&sm, g_repo, "../TestGitRepository", "TestGitRepository", 1)
  );
 git_submodule_free(sm);

 assert_submodule_url("TestGitRepository", "https://github.com/libgit2/TestGitRepository");
}

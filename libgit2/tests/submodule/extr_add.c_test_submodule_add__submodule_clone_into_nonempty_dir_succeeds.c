
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule ;


 int assert_submodule_exists (int ,char*) ;
 int cl_assert (int ) ;
 int cl_fixture (char*) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_path_exists (char*) ;
 int git_submodule_add_finalize (int *) ;
 int git_submodule_add_setup (int **,int ,int ,char*,int) ;
 int git_submodule_clone (int *,int *,int *) ;
 int git_submodule_free (int *) ;
 int p_mkdir (char*,int) ;

void test_submodule_add__submodule_clone_into_nonempty_dir_succeeds(void)
{
 git_submodule *sm;

 g_repo = cl_git_sandbox_init("empty_standard_repo");

 cl_git_pass(p_mkdir("empty_standard_repo/sm", 0777));
 cl_git_mkfile("empty_standard_repo/sm/foobar", "");


 cl_git_pass(git_submodule_add_setup(&sm, g_repo, cl_fixture("testrepo.git"), "sm", 1));
 cl_git_pass(git_submodule_clone(((void*)0), sm, ((void*)0)));
 cl_git_pass(git_submodule_add_finalize(sm));

 cl_assert(git_path_exists("empty_standard_repo/sm/foobar"));

 assert_submodule_exists(g_repo, "sm");

 git_submodule_free(sm);
}

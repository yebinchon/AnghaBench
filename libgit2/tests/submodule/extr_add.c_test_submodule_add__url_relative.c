
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_submodule ;
struct TYPE_4__ {int count; int member_0; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_remote ;


 int assert_submodule_url (char*,char*) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_remote_lookup (int **,int ,char*) ;
 int git_remote_rename (TYPE_1__*,int ,char*,char*) ;
 int git_strarray_free (TYPE_1__*) ;
 int git_submodule_add_setup (int **,int ,char*,char*,int) ;
 int git_submodule_free (int *) ;

void test_submodule_add__url_relative(void)
{
 git_submodule *sm;
 git_remote *remote;
 git_strarray problems = {0};


 g_repo = cl_git_sandbox_init("testrepo2");


 cl_git_pass(git_remote_rename(&problems, g_repo, "origin", "test_remote"));
 cl_assert_equal_i(0, problems.count);
 git_strarray_free(&problems);
 cl_git_fail(git_remote_lookup(&remote, g_repo, "origin"));

 cl_git_pass(
  git_submodule_add_setup(&sm, g_repo, "../TestGitRepository", "TestGitRepository", 1)
  );
 git_submodule_free(sm);

 assert_submodule_url("TestGitRepository", "https://github.com/libgit2/TestGitRepository");
}

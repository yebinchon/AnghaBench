
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule ;
typedef int git_repository ;


 int GIT_EEXISTS ;
 int GIT_ENOTFOUND ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int * cl_git_sandbox_init (char*) ;
 int git_submodule_lookup (int **,int *,char*) ;
 int p_mkdir (char*,int) ;

void test_submodule_nosubs__lookup(void)
{
 git_repository *repo = cl_git_sandbox_init("status");
 git_submodule *sm = ((void*)0);

 p_mkdir("status/subrepo", 0777);
 cl_git_mkfile("status/subrepo/.git", "gitdir: ../.git");

 cl_assert_equal_i(GIT_ENOTFOUND, git_submodule_lookup(&sm, repo, "subdir"));

 cl_assert_equal_i(GIT_EEXISTS, git_submodule_lookup(&sm, repo, "subrepo"));

 cl_assert_equal_i(GIT_ENOTFOUND, git_submodule_lookup(&sm, repo, "subdir"));

 cl_assert_equal_i(GIT_EEXISTS, git_submodule_lookup(&sm, repo, "subrepo"));
}

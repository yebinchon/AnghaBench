
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int GIT_ENOTFOUND ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int * cl_git_sandbox_init (char*) ;
 int git_submodule_lookup (int *,int *,char*) ;

void test_submodule_nosubs__bad_gitmodules(void)
{
 git_repository *repo = cl_git_sandbox_init("status");

 cl_git_mkfile("status/.gitmodules", "[submodule \"foobar\"]\tpath=blargle\n\turl=\n\tbranch=\n\tupdate=flooble\n\n");

 cl_git_rewritefile("status/.gitmodules", "[submodule \"foobar\"]\tpath=blargle\n\turl=\n\tbranch=\n\tupdate=rebase\n\n");

 cl_git_pass(git_submodule_lookup(((void*)0), repo, "foobar"));
 cl_assert_equal_i(GIT_ENOTFOUND, git_submodule_lookup(((void*)0), repo, "subdir"));
}

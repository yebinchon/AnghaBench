
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule ;
typedef int git_repository ;


 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int fake_submod_cb ;
 int git_submodule_add_setup (int **,int *,char*,char*,int) ;
 int git_submodule_foreach (int *,int ,int *) ;
 int git_submodule_free (int *) ;
 int git_submodule_lookup (int **,int *,char*) ;

void test_submodule_nosubs__add(void)
{
 git_repository *repo = cl_git_sandbox_init("status");
 git_submodule *sm, *sm2;

 cl_git_pass(git_submodule_add_setup(&sm, repo, "https://github.com/libgit2/libgit2.git", "submodules/libgit2", 1));

 cl_git_pass(git_submodule_lookup(&sm2, repo, "submodules/libgit2"));
 git_submodule_free(sm2);

 cl_git_pass(git_submodule_foreach(repo, fake_submod_cb, ((void*)0)));

 git_submodule_free(sm);
}

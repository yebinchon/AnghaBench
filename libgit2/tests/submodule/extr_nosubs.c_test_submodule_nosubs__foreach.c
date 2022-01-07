
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int fake_submod_cb ;
 int git_submodule_foreach (int *,int ,int *) ;

void test_submodule_nosubs__foreach(void)
{
 git_repository *repo = cl_git_sandbox_init("status");
 cl_git_pass(git_submodule_foreach(repo, fake_submod_cb, ((void*)0)));
}

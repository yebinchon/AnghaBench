
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_pass (int ) ;
 int git_signature_new (int *,char*,char*,int,int) ;
 int git_submodule_lookup (int *,int ,char*) ;
 int repo ;
 int setup_fixture_submodules () ;
 int signature ;
 int sm ;

void test_stash_submodules__initialize(void)
{
 cl_git_pass(git_signature_new(&signature, "nulltoken", "emeric.fermas@gmail.com", 1323847743, 60));

 repo = setup_fixture_submodules();

 cl_git_pass(git_submodule_lookup(&sm, repo, "testrepo"));
}

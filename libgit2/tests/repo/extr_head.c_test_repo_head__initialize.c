
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_email ;
 int git_repository_set_ident (int ,char*,int ) ;
 int repo ;

void test_repo_head__initialize(void)
{
 repo = cl_git_sandbox_init("testrepo.git");
 cl_git_pass(git_repository_set_ident(repo, "Foo Bar", g_email));
}

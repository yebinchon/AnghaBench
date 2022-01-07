
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_email ;
 int g_repo ;
 int git_repository_set_ident (int ,char*,int ) ;

void test_refs_reflog_messages__initialize(void)
{
 g_repo = cl_git_sandbox_init("testrepo.git");
 cl_git_pass(git_repository_set_ident(g_repo, "Foo Bar", g_email));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_fail (int ) ;
 int cl_git_sandbox_cleanup () ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_checkout_index (int ,int *,int *) ;

void test_checkout_index__cannot_checkout_a_bare_repository(void)
{
 cl_git_sandbox_cleanup();
 g_repo = cl_git_sandbox_init("testrepo.git");

 cl_git_fail(git_checkout_index(g_repo, ((void*)0), ((void*)0)));
}

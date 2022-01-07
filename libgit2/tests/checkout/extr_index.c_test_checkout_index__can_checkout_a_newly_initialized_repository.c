
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_pass (int ) ;
 int cl_git_remove_placeholders (int ,char*) ;
 int cl_git_sandbox_cleanup () ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_checkout_index (int ,int *,int *) ;
 int git_repository_path (int ) ;

void test_checkout_index__can_checkout_a_newly_initialized_repository(void)
{
 cl_git_sandbox_cleanup();
 g_repo = cl_git_sandbox_init("empty_standard_repo");

 cl_git_remove_placeholders(git_repository_path(g_repo), "dummy-marker.txt");

 cl_git_pass(git_checkout_index(g_repo, ((void*)0), ((void*)0)));
}

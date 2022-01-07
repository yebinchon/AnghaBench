
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_pass (int ) ;
 int cl_git_remove_placeholders (int ,char*) ;
 int cl_git_sandbox_cleanup () ;
 int cl_git_sandbox_init (char*) ;
 int cl_set_cleanup (int *,char*) ;
 int cleanup_repository ;
 int g_options ;
 int g_repo ;
 int g_repo_cloned ;
 int git_clone (int *,char*,char*,int *) ;
 int git_repository_path (int ) ;

void test_clone_empty__can_clone_an_empty_standard_repo(void)
{
 cl_git_sandbox_cleanup();
 g_repo = cl_git_sandbox_init("empty_standard_repo");
 cl_git_remove_placeholders(git_repository_path(g_repo), "dummy-marker.txt");

 cl_set_cleanup(&cleanup_repository, "./empty");

 cl_git_pass(git_clone(&g_repo_cloned, "./empty_standard_repo", "./empty", &g_options));
}

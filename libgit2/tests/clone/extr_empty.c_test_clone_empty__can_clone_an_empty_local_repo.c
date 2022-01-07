
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_pass (int ) ;
 int cl_set_cleanup (int *,char*) ;
 int cleanup_repository ;
 int g_options ;
 int g_repo_cloned ;
 int git_clone (int *,char*,char*,int *) ;

void test_clone_empty__can_clone_an_empty_local_repo(void)
{
 cl_set_cleanup(&cleanup_repository, "./empty");

 cl_git_pass(git_clone(&g_repo_cloned, "./empty_bare.git", "./empty", &g_options));
}

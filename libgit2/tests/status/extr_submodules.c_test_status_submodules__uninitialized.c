
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_status_list ;
typedef int git_repository ;


 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_cleanup () ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_clone (int **,char*,char*,int *) ;
 int git_repository_free (int *) ;
 int git_status_list_entrycount (int *) ;
 int git_status_list_free (int *) ;
 int git_status_list_new (int **,int *,int *) ;

void test_status_submodules__uninitialized(void)
{
 git_repository *cloned_repo;
 git_status_list *statuslist;

 g_repo = cl_git_sandbox_init("submod2");

 cl_git_pass(git_clone(&cloned_repo, "submod2", "submod2-clone", ((void*)0)));

 cl_git_pass(git_status_list_new(&statuslist, cloned_repo, ((void*)0)));
 cl_assert_equal_i(0, git_status_list_entrycount(statuslist));

 git_status_list_free(statuslist);
 git_repository_free(cloned_repo);
 cl_git_sandbox_cleanup();
}

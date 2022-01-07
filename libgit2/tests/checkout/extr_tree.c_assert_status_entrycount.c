
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_status_list ;
typedef int git_repository ;


 int cl_assert_equal_i (size_t,int ) ;
 int cl_git_pass (int ) ;
 int git_status_list_entrycount (int *) ;
 int git_status_list_free (int *) ;
 int git_status_list_new (int **,int *,int *) ;

__attribute__((used)) static void assert_status_entrycount(git_repository *repo, size_t count)
{
 git_status_list *status;

 cl_git_pass(git_status_list_new(&status, repo, ((void*)0)));
 cl_assert_equal_i(count, git_status_list_entrycount(status));

 git_status_list_free(status);
}

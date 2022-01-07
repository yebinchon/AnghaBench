
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_status_list ;


 int cl_assert_equal_b (int,int ) ;
 int cl_git_pass (int ) ;
 int git_index_read (int ,int) ;
 int git_status_list_free (int *) ;
 int git_status_list_new (int **,int ,int *) ;
 int has_nsecs () ;
 int repo ;
 int repo_index ;

void test_index_nsec__status_doesnt_clear_nsecs(void)
{
 git_status_list *statuslist;

 cl_git_pass(git_status_list_new(&statuslist, repo, ((void*)0)));

 git_index_read(repo_index, 1);
 cl_assert_equal_b(1, has_nsecs());

 git_status_list_free(statuslist);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index ;


 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int git_index_entrycount (int *) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_repository_index (int **,int ) ;
 int repo ;

void test_win32_forbidden__can_open_index(void)
{
 git_index *index;
 cl_git_pass(git_repository_index(&index, repo));
 cl_assert_equal_i(7, git_index_entrycount(index));


 cl_git_pass(git_index_write(index));

 git_index_free(index);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index ;


 int GIT_ERROR ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_new (int **) ;

void test_index_inmemory__cannot_add_bypath_to_an_inmemory_index(void)
{
 git_index *index;

 cl_git_pass(git_index_new(&index));

 cl_assert_equal_i(GIT_ERROR, git_index_add_bypath(index, "test.txt"));

 git_index_free(index);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index ;


 int cl_assert_equal_i (int ,int) ;
 int cl_git_pass (int ) ;
 scalar_t__ git_index_entrycount (int *) ;
 int git_index_free (int *) ;
 int git_index_new (int **) ;

void test_index_inmemory__can_create_an_inmemory_index(void)
{
 git_index *index;

 cl_git_pass(git_index_new(&index));
 cl_assert_equal_i(0, (int)git_index_entrycount(index));

 git_index_free(index);
}

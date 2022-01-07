
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int entries; } ;
typedef TYPE_1__ git_index ;


 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int git_index_free (TYPE_1__*) ;
 int git_index_open (TYPE_1__**,char*) ;
 int git_vector_is_sorted (int *) ;

void test_index_tests__sort1(void)
{

   git_index *index;

   cl_git_pass(git_index_open(&index, "fake-index"));


   cl_assert(git_vector_is_sorted(&index->entries));

   git_index_free(index);
}

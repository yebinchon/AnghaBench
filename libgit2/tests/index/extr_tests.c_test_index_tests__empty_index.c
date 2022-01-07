
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ on_disk; int entries; } ;
typedef TYPE_1__ git_index ;


 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 scalar_t__ git_index_entrycount (TYPE_1__*) ;
 int git_index_free (TYPE_1__*) ;
 int git_index_open (TYPE_1__**,char*) ;
 int git_vector_is_sorted (int *) ;

void test_index_tests__empty_index(void)
{
   git_index *index;

   cl_git_pass(git_index_open(&index, "in-memory-index"));
   cl_assert(index->on_disk == 0);

   cl_assert(git_index_entrycount(index) == 0);
   cl_assert(git_vector_is_sorted(&index->entries));

   git_index_free(index);
}

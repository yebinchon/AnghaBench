
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int on_disk; int * tree; int entries; } ;
typedef TYPE_1__ git_index ;


 int TEST_INDEX2_PATH ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 scalar_t__ git_index_entrycount (TYPE_1__*) ;
 int git_index_free (TYPE_1__*) ;
 int git_index_open (TYPE_1__**,int ) ;
 int git_vector_is_sorted (int *) ;
 scalar_t__ index_entry_count_2 ;

void test_index_tests__gitgit_index(void)
{
   git_index *index;

   cl_git_pass(git_index_open(&index, TEST_INDEX2_PATH));
   cl_assert(index->on_disk);

   cl_assert(git_index_entrycount(index) == index_entry_count_2);
   cl_assert(git_vector_is_sorted(&index->entries));
   cl_assert(index->tree != ((void*)0));

   git_index_free(index);
}

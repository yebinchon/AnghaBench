
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_index ;
struct TYPE_3__ {size_t index; int path; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int TEST_INDEX_PATH ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_index_find (size_t*,int *,int ) ;
 int git_index_free (int *) ;
 int git_index_open (int **,int ) ;
 TYPE_1__* test_entries ;

void test_index_tests__find_in_existing(void)
{
   git_index *index;
   unsigned int i;

   cl_git_pass(git_index_open(&index, TEST_INDEX_PATH));

   for (i = 0; i < ARRAY_SIZE(test_entries); ++i) {
  size_t idx;

  cl_assert(!git_index_find(&idx, index, test_entries[i].path));
  cl_assert(idx == test_entries[i].index);
   }

   git_index_free(index);
}

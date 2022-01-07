
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_index ;
struct TYPE_3__ {int path; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ GIT_ENOTFOUND ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 scalar_t__ git_index_find (int *,int *,int ) ;
 int git_index_free (int *) ;
 int git_index_open (int **,char*) ;
 TYPE_1__* test_entries ;

void test_index_tests__find_in_empty(void)
{
   git_index *index;
   unsigned int i;

   cl_git_pass(git_index_open(&index, "fake-index"));

   for (i = 0; i < ARRAY_SIZE(test_entries); ++i) {
  cl_assert(GIT_ENOTFOUND == git_index_find(((void*)0), index, test_entries[i].path));
   }

   git_index_free(index);
}

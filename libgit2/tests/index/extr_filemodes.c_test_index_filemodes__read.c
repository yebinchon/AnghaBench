
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;


 int cl_assert (int) ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 scalar_t__ git_index_entrycount (int *) ;
 int git_index_free (int *) ;
 TYPE_1__* git_index_get_byindex (int *,unsigned int) ;
 int git_repository_index (int **,int ) ;

void test_index_filemodes__read(void)
{
 git_index *index;
 unsigned int i;
 static bool expected[6] = { 0, 1, 0, 1, 0, 1 };

 cl_git_pass(git_repository_index(&index, g_repo));
 cl_assert_equal_i(6, (int)git_index_entrycount(index));

 for (i = 0; i < 6; ++i) {
  const git_index_entry *entry = git_index_get_byindex(index, i);
  cl_assert(entry != ((void*)0));
  cl_assert(((entry->mode & 0100) ? 1 : 0) == expected[i]);
 }

 git_index_free(index);
}

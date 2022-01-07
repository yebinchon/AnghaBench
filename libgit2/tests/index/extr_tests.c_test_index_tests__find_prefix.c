
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int path; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;


 scalar_t__ GIT_ENOTFOUND ;
 int TEST_INDEX_PATH ;
 int cl_assert (int) ;
 int cl_git_pass (scalar_t__) ;
 scalar_t__ git__strcmp (int ,char*) ;
 scalar_t__ git_index_find_prefix (size_t*,int *,char*) ;
 int git_index_free (int *) ;
 TYPE_1__* git_index_get_byindex (int *,size_t) ;
 scalar_t__ git_index_open (int **,int ) ;

void test_index_tests__find_prefix(void)
{
   git_index *index;
   const git_index_entry *entry;
   size_t pos;

   cl_git_pass(git_index_open(&index, TEST_INDEX_PATH));

   cl_git_pass(git_index_find_prefix(&pos, index, "src"));
   entry = git_index_get_byindex(index, pos);
   cl_assert(git__strcmp(entry->path, "src/block-sha1/sha1.c") == 0);

   cl_git_pass(git_index_find_prefix(&pos, index, "src/co"));
   entry = git_index_get_byindex(index, pos);
   cl_assert(git__strcmp(entry->path, "src/commit.c") == 0);

   cl_assert(GIT_ENOTFOUND == git_index_find_prefix(((void*)0), index, "blah"));

   git_index_free(index);
}

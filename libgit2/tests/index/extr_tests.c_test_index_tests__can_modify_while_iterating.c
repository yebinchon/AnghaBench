
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int snap; } ;
typedef TYPE_2__ git_index_iterator ;
struct TYPE_9__ {int member_0; } ;
struct TYPE_11__ {char* path; void* mode; int id; TYPE_1__ member_0; } ;
typedef TYPE_3__ git_index_entry ;
typedef int git_index ;


 void* GIT_FILEMODE_BLOB ;
 int GIT_ITEROVER ;
 int TEST_INDEX_PATH ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (size_t,size_t) ;
 int cl_git_pass (int ) ;
 int git_index_add (int *,TYPE_3__*) ;
 size_t git_index_entrycount (int *) ;
 int git_index_free (int *) ;
 int git_index_iterator_free (TYPE_2__*) ;
 int git_index_iterator_new (TYPE_2__**,int *) ;
 int git_index_iterator_next (TYPE_3__ const**,TYPE_2__*) ;
 int git_index_open (int **,int ) ;
 int git_oid_fromstr (int *,char*) ;
 int git_vector_is_sorted (int *) ;

void test_index_tests__can_modify_while_iterating(void)
{
 git_index *index;
 git_index_iterator *iterator;
 const git_index_entry *entry;
 git_index_entry new_entry = {{0}};
 size_t expected = 0, seen = 0;
 int ret;

 cl_git_pass(git_index_open(&index, TEST_INDEX_PATH));
 cl_git_pass(git_index_iterator_new(&iterator, index));

 expected = git_index_entrycount(index);
 cl_assert(git_vector_is_sorted(&iterator->snap));






 cl_git_pass(git_oid_fromstr(&new_entry.id, "8312e0a89a9cbab77c732b6bc39b51a783e3a318"));
 new_entry.path = "newfile";
 new_entry.mode = GIT_FILEMODE_BLOB;
 cl_git_pass(git_index_add(index, &new_entry));

 cl_git_pass(git_oid_fromstr(&new_entry.id, "4141414141414141414141414141414141414141"));
 new_entry.path = "Makefile";
 new_entry.mode = GIT_FILEMODE_BLOB;
 cl_git_pass(git_index_add(index, &new_entry));

 while (1) {
  ret = git_index_iterator_next(&entry, iterator);

  if (ret == GIT_ITEROVER)
   break;

  seen++;
 }

 cl_assert_equal_i(expected, seen);

 git_index_iterator_free(iterator);
 git_index_free(index);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int seconds; } ;
struct TYPE_11__ {int file_size; TYPE_1__ mtime; int path; } ;
typedef TYPE_2__ git_index_entry ;
struct TYPE_14__ {scalar_t__ contents; } ;
struct TYPE_12__ {int on_disk; TYPE_5__ entries; } ;
typedef TYPE_3__ git_index ;
struct TYPE_13__ {size_t index; int file_size; int mtime; int path; } ;


 unsigned int ARRAY_SIZE (TYPE_4__*) ;
 int TEST_INDEX_PATH ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 scalar_t__ git_index_entrycount (TYPE_3__*) ;
 int git_index_free (TYPE_3__*) ;
 int git_index_open (TYPE_3__**,int ) ;
 int git_vector_is_sorted (TYPE_5__*) ;
 scalar_t__ index_entry_count ;
 TYPE_4__* test_entries ;

void test_index_tests__default_test_index(void)
{
   git_index *index;
   unsigned int i;
   git_index_entry **entries;

   cl_git_pass(git_index_open(&index, TEST_INDEX_PATH));
   cl_assert(index->on_disk);

   cl_assert(git_index_entrycount(index) == index_entry_count);
   cl_assert(git_vector_is_sorted(&index->entries));

   entries = (git_index_entry **)index->entries.contents;

   for (i = 0; i < ARRAY_SIZE(test_entries); ++i) {
  git_index_entry *e = entries[test_entries[i].index];

  cl_assert_equal_s(e->path, test_entries[i].path);
  cl_assert_equal_i(e->mtime.seconds, test_entries[i].mtime);
  cl_assert_equal_i(e->file_size, test_entries[i].file_size);
   }

   git_index_free(index);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int on_disk; } ;
typedef TYPE_1__ git_index ;


 int TEST_INDEXBIG_PATH ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int copy_file (int ,char*) ;
 int files_are_equal (int ,char*) ;
 int git_index_free (TYPE_1__*) ;
 int git_index_open (TYPE_1__**,char*) ;
 int git_index_write (TYPE_1__*) ;
 int p_unlink (char*) ;

void test_index_tests__write(void)
{
   git_index *index;

   copy_file(TEST_INDEXBIG_PATH, "index_rewrite");

   cl_git_pass(git_index_open(&index, "index_rewrite"));
   cl_assert(index->on_disk);

   cl_git_pass(git_index_write(index));
   files_are_equal(TEST_INDEXBIG_PATH, "index_rewrite");

   git_index_free(index);

   p_unlink("index_rewrite");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int file_size; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;


 int cl_assert (TYPE_1__ const*) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 TYPE_1__* git_index_get_bypath (int *,char*,int ) ;
 int git_index_write (int *) ;
 int git_repository_index__weakptr (int **,int ) ;
 int setup_race () ;

void test_index_racy__smudges_index_entry_on_save(void)
{
 git_index *index;
 const git_index_entry *entry;

 setup_race();







 cl_git_pass(git_repository_index__weakptr(&index, g_repo));
 cl_git_pass(git_index_write(index));

 cl_assert(entry = git_index_get_bypath(index, "A", 0));
 cl_assert_equal_i(0, entry->file_size);
}

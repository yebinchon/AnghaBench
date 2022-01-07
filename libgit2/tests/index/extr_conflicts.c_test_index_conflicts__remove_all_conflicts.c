
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index_entry ;


 int cl_assert (int) ;
 int cl_assert_equal_i (int,int ) ;
 int git_index_conflict_cleanup (int ) ;
 int git_index_entry_is_conflict (int const*) ;
 size_t git_index_entrycount (int ) ;
 int * git_index_get_byindex (int ,size_t) ;
 int git_index_has_conflicts (int ) ;
 int repo_index ;

void test_index_conflicts__remove_all_conflicts(void)
{
 size_t i;
 const git_index_entry *entry;

 cl_assert(git_index_entrycount(repo_index) == 8);

 cl_assert_equal_i(1, git_index_has_conflicts(repo_index));

 git_index_conflict_cleanup(repo_index);

 cl_assert_equal_i(0, git_index_has_conflicts(repo_index));

 cl_assert(git_index_entrycount(repo_index) == 2);

 for (i = 0; i < git_index_entrycount(repo_index); i++) {
  cl_assert(entry = git_index_get_byindex(repo_index, i));
  cl_assert(!git_index_entry_is_conflict(entry));
 }
}

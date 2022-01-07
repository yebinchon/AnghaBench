
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_index_entry {int dummy; } ;
typedef int git_index_entry ;
typedef int git_index ;


 size_t git_index_entrycount (int *) ;
 int * git_index_get_byindex (int *,size_t) ;
 int index_entry_eq_merge_index_entry (struct merge_index_entry const*,int const*) ;

int merge_test_index(git_index *index, const struct merge_index_entry expected[], size_t expected_len)
{
 size_t i;
 const git_index_entry *index_entry;





 if (git_index_entrycount(index) != expected_len)
  return 0;

 for (i = 0; i < expected_len; i++) {
  if ((index_entry = git_index_get_byindex(index, i)) == ((void*)0))
   return 0;

  if (!index_entry_eq_merge_index_entry(&expected[i], index_entry))
   return 0;
 }

 return 1;
}

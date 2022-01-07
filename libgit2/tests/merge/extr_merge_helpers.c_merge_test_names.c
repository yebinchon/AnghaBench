
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_name_entry {int dummy; } ;
typedef int git_index_name_entry ;
typedef int git_index ;


 size_t git_index_name_entrycount (int *) ;
 int * git_index_name_get_byindex (int *,size_t) ;
 int name_entry_eq_merge_name_entry (struct merge_name_entry const*,int const*) ;

int merge_test_names(git_index *index, const struct merge_name_entry expected[], size_t expected_len)
{
 size_t i;
 const git_index_name_entry *name_entry;





 if (git_index_name_entrycount(index) != expected_len)
  return 0;

 for (i = 0; i < expected_len; i++) {
  if ((name_entry = git_index_name_get_byindex(index, i)) == ((void*)0))
   return 0;

  if (! name_entry_eq_merge_name_entry(&expected[i], name_entry))
   return 0;
 }

 return 1;
}

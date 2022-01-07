
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index_entry ;
typedef int git_index ;


 int cl_assert (int const*) ;
 scalar_t__ git_index_entry_is_conflict (int const*) ;
 size_t git_index_entrycount (int *) ;
 int * git_index_get_byindex (int *,size_t) ;

__attribute__((used)) static int merge_trivial_conflict_entrycount(git_index *index)
{
 const git_index_entry *entry;
 int count = 0;
 size_t i;

 for (i = 0; i < git_index_entrycount(index); i++) {
  cl_assert(entry = git_index_get_byindex(index, i));

  if (git_index_entry_is_conflict(entry))
   count++;
 }

 return count;
}

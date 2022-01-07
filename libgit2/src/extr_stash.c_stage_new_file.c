
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index_entry ;
typedef int git_index ;


 int git_index_add (int *,int const*) ;

__attribute__((used)) static int stage_new_file(const git_index_entry **entries, void *data)
{
 git_index *index = data;

 if(entries[0] == ((void*)0))
  return git_index_add(index, entries[1]);
 else
  return git_index_add(index, entries[0]);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_index_entry ;
struct TYPE_4__ {int entries; } ;
typedef TYPE_1__ git_index ;


 int assert (TYPE_1__*) ;
 int const* git_vector_get (int *,size_t) ;
 int git_vector_sort (int *) ;

const git_index_entry *git_index_get_byindex(
 git_index *index, size_t n)
{
 assert(index);
 git_vector_sort(&index->entries);
 return git_vector_get(&index->entries, n);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_index_reuc_entry ;
struct TYPE_5__ {int reuc; } ;
typedef TYPE_1__ git_index ;


 int assert (TYPE_1__*) ;
 int const* git_vector_get (int *,size_t) ;
 TYPE_1__* git_vector_is_sorted (int *) ;

const git_index_reuc_entry *git_index_reuc_get_byindex(
 git_index *index, size_t n)
{
 assert(index);
 assert(git_vector_is_sorted(&index->reuc));

 return git_vector_get(&index->reuc, n);
}

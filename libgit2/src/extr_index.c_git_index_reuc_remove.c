
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_index_reuc_entry ;
struct TYPE_3__ {int dirty; int reuc; } ;
typedef TYPE_1__ git_index ;


 int assert (int ) ;
 int * git_vector_get (int *,size_t) ;
 int git_vector_is_sorted (int *) ;
 int git_vector_remove (int *,size_t) ;
 int index_entry_reuc_free (int *) ;

int git_index_reuc_remove(git_index *index, size_t position)
{
 int error;
 git_index_reuc_entry *reuc;

 assert(git_vector_is_sorted(&index->reuc));

 reuc = git_vector_get(&index->reuc, position);
 error = git_vector_remove(&index->reuc, position);

 if (!error)
  index_entry_reuc_free(reuc);

 index->dirty = 1;
 return error;
}

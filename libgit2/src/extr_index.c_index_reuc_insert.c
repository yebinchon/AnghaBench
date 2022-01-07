
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * path; } ;
typedef TYPE_1__ git_index_reuc_entry ;
struct TYPE_7__ {int dirty; int reuc; } ;
typedef TYPE_2__ git_index ;


 int GIT_EEXISTS ;
 int assert (int) ;
 int git_vector_insert_sorted (int *,TYPE_1__*,int *) ;
 int git_vector_is_sorted (int *) ;
 int index_reuc_on_dup ;

__attribute__((used)) static int index_reuc_insert(
 git_index *index,
 git_index_reuc_entry *reuc)
{
 int res;

 assert(index && reuc && reuc->path != ((void*)0));
 assert(git_vector_is_sorted(&index->reuc));

 res = git_vector_insert_sorted(&index->reuc, reuc, &index_reuc_on_dup);
 index->dirty = 1;

 return res == GIT_EEXISTS ? 0 : res;
}

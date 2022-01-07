
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ length; } ;
struct TYPE_10__ {int dirty; int stamp; TYPE_1__ entries; int entries_map; int tree_pool; int * tree; } ;
typedef TYPE_2__ git_index ;


 int assert (TYPE_2__*) ;
 int git_futils_filestamp_set (int *,int *) ;
 int git_idxmap_clear (int ) ;
 int git_index_name_clear (TYPE_2__*) ;
 int git_index_reuc_clear (TYPE_2__*) ;
 int git_pool_clear (int *) ;
 int index_free_deleted (TYPE_2__*) ;
 int index_remove_entry (TYPE_2__*,scalar_t__) ;

int git_index_clear(git_index *index)
{
 int error = 0;

 assert(index);

 index->dirty = 1;
 index->tree = ((void*)0);
 git_pool_clear(&index->tree_pool);

 git_idxmap_clear(index->entries_map);
 while (!error && index->entries.length > 0)
  error = index_remove_entry(index, index->entries.length - 1);
 index_free_deleted(index);

 git_index_reuc_clear(index);
 git_index_name_clear(index);

 git_futils_filestamp_set(&index->stamp, ((void*)0));

 return error;
}

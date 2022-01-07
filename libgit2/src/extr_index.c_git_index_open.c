
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int on_disk; int tree_pool; int version; int reuc_search; int entries_search_path; int entries_search; int entries_cmp_path; int deleted; int reuc; int names; int entries_map; int entries; int index_file_path; } ;
typedef TYPE_1__ git_index ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int GIT_REFCOUNT_INC (TYPE_1__*) ;
 int INDEX_VERSION_NUMBER_DEFAULT ;
 int assert (TYPE_1__**) ;
 int conflict_name_cmp ;
 TYPE_1__* git__calloc (int,int) ;
 int git__strcmp_cb ;
 int git__strdup (char const*) ;
 scalar_t__ git_idxmap_new (int *) ;
 int git_index_entry_cmp ;
 int git_index_entry_srch ;
 int git_index_free (TYPE_1__*) ;
 int git_index_read (TYPE_1__*,int) ;
 int git_path_exists (int ) ;
 int git_pool_clear (int *) ;
 int git_pool_init (int *,int) ;
 scalar_t__ git_vector_init (int *,int,int ) ;
 int index_entry_srch_path ;
 int reuc_cmp ;
 int reuc_srch ;

int git_index_open(git_index **index_out, const char *index_path)
{
 git_index *index;
 int error = -1;

 assert(index_out);

 index = git__calloc(1, sizeof(git_index));
 GIT_ERROR_CHECK_ALLOC(index);

 git_pool_init(&index->tree_pool, 1);

 if (index_path != ((void*)0)) {
  index->index_file_path = git__strdup(index_path);
  if (!index->index_file_path)
   goto fail;


  if (git_path_exists(index->index_file_path) == 1)
   index->on_disk = 1;
 }

 if (git_vector_init(&index->entries, 32, git_index_entry_cmp) < 0 ||
     git_idxmap_new(&index->entries_map) < 0 ||
     git_vector_init(&index->names, 8, conflict_name_cmp) < 0 ||
     git_vector_init(&index->reuc, 8, reuc_cmp) < 0 ||
     git_vector_init(&index->deleted, 8, git_index_entry_cmp) < 0)
  goto fail;

 index->entries_cmp_path = git__strcmp_cb;
 index->entries_search = git_index_entry_srch;
 index->entries_search_path = index_entry_srch_path;
 index->reuc_search = reuc_srch;
 index->version = INDEX_VERSION_NUMBER_DEFAULT;

 if (index_path != ((void*)0) && (error = git_index_read(index, 1)) < 0)
  goto fail;

 *index_out = index;
 GIT_REFCOUNT_INC(index);

 return 0;

fail:
 git_pool_clear(&index->tree_pool);
 git_index_free(index);
 return error;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int git_oid ;
struct TYPE_13__ {scalar_t__ path; scalar_t__ file_size; int id; int mode; } ;
typedef TYPE_1__ git_index_entry ;
struct TYPE_14__ {int tree; } ;
typedef TYPE_2__ git_index ;


 int GIT_ENOTFOUND ;
 int GIT_ERROR_INDEX ;
 int * INDEX_OWNER (TYPE_2__*) ;
 size_t UINT32_MAX ;
 int assert (int) ;
 int create_index_error (int,char*) ;
 int git_blob_create_from_buffer (int *,int *,void const*,size_t) ;
 int git_error_set (int ,char*) ;
 int git_oid_cpy (int *,int *) ;
 int git_tree_cache_invalidate_path (int ,scalar_t__) ;
 int index_conflict_to_reuc (TYPE_2__*,scalar_t__) ;
 scalar_t__ index_entry_dup (TYPE_1__**,TYPE_2__*,TYPE_1__ const*) ;
 int index_entry_free (TYPE_1__*) ;
 int index_insert (TYPE_2__*,TYPE_1__**,int,int,int,int) ;
 int is_file_or_link (int ) ;

int git_index_add_from_buffer(
    git_index *index, const git_index_entry *source_entry,
    const void *buffer, size_t len)
{
 git_index_entry *entry = ((void*)0);
 int error = 0;
 git_oid id;

 assert(index && source_entry->path);

 if (INDEX_OWNER(index) == ((void*)0))
  return create_index_error(-1,
   "could not initialize index entry. "
   "Index is not backed up by an existing repository.");

 if (!is_file_or_link(source_entry->mode)) {
  git_error_set(GIT_ERROR_INDEX, "invalid filemode");
  return -1;
 }

 if (len > UINT32_MAX) {
  git_error_set(GIT_ERROR_INDEX, "buffer is too large");
  return -1;
 }

 if (index_entry_dup(&entry, index, source_entry) < 0)
  return -1;

 error = git_blob_create_from_buffer(&id, INDEX_OWNER(index), buffer, len);
 if (error < 0) {
  index_entry_free(entry);
  return error;
 }

 git_oid_cpy(&entry->id, &id);
 entry->file_size = (uint32_t)len;

 if ((error = index_insert(index, &entry, 1, 1, 1, 1)) < 0)
  return error;


 if ((error = index_conflict_to_reuc(index, entry->path)) < 0 && error != GIT_ENOTFOUND)
  return error;

 git_tree_cache_invalidate_path(index->tree, entry->path);
 return 0;
}

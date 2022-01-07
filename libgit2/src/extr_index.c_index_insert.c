
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct entry_internal {size_t pathlen; } ;
struct TYPE_24__ {int mode; scalar_t__ path; int id; int flags_extended; } ;
typedef TYPE_1__ git_index_entry ;
struct TYPE_25__ {int dirty; int entries; } ;
typedef TYPE_2__ git_index ;


 int GIT_FILEMODE_COMMIT ;
 int GIT_INDEX_ENTRY_UPTODATE ;
 scalar_t__ INDEX_OWNER (TYPE_2__*) ;
 int INSERT_IN_MAP (TYPE_2__*,TYPE_1__*,int) ;
 int assert (int) ;
 int canonicalize_directory_path (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 int check_file_directory_collision (TYPE_2__*,TYPE_1__*,size_t,int) ;
 int git_index__create_mode (int) ;
 int git_object__is_valid (scalar_t__,int *,int ) ;
 int git_object__type_from_filemode (int) ;
 int git_vector_insert_sorted (int *,TYPE_1__*,int ) ;
 int git_vector_sort (int *) ;
 int index_entry_adjust_namemask (TYPE_1__*,size_t) ;
 int index_entry_cpy (TYPE_1__*,TYPE_1__*) ;
 int index_entry_free (TYPE_1__*) ;
 int index_existing_and_best (TYPE_1__**,size_t*,TYPE_1__**,TYPE_2__*,TYPE_1__*) ;
 int index_merge_mode (TYPE_2__*,TYPE_1__*,int) ;
 int index_no_dups ;
 int memcpy (char*,scalar_t__,int ) ;
 int strlen (scalar_t__) ;

__attribute__((used)) static int index_insert(
 git_index *index,
 git_index_entry **entry_ptr,
 int replace,
 bool trust_path,
 bool trust_mode,
 bool trust_id)
{
 git_index_entry *existing, *best, *entry;
 size_t path_length, position;
 int error;

 assert(index && entry_ptr);

 entry = *entry_ptr;


 path_length = ((struct entry_internal *)entry)->pathlen;
 index_entry_adjust_namemask(entry, path_length);


 entry->flags_extended |= GIT_INDEX_ENTRY_UPTODATE;

 git_vector_sort(&index->entries);





 index_existing_and_best(&existing, &position, &best, index, entry);


 entry->mode = trust_mode ?
  git_index__create_mode(entry->mode) :
  index_merge_mode(index, best, entry->mode);


 if (!trust_path && (error = canonicalize_directory_path(index, entry, best)) < 0)
  goto out;


 if (!trust_id && INDEX_OWNER(index) &&
     (entry->mode & GIT_FILEMODE_COMMIT) != GIT_FILEMODE_COMMIT) {

  if (!git_object__is_valid(INDEX_OWNER(index), &entry->id,
       git_object__type_from_filemode(entry->mode))) {
   error = -1;
   goto out;
  }
 }


 if ((error = check_file_directory_collision(index, entry, position, replace)) < 0)
  goto out;





 if (existing) {
  if (replace) {
   index_entry_cpy(existing, entry);

   if (trust_path)
    memcpy((char *)existing->path, entry->path, strlen(entry->path));
  }

  index_entry_free(entry);
  *entry_ptr = existing;
 } else {





  if ((error = git_vector_insert_sorted(&index->entries, entry, index_no_dups)) < 0)
   goto out;

  INSERT_IN_MAP(index, entry, error);
 }

 index->dirty = 1;

out:
 if (error < 0) {
  index_entry_free(*entry_ptr);
  *entry_ptr = ((void*)0);
 }

 return error;
}

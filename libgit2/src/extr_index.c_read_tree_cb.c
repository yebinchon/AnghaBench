
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int new_entries; int * old_entries; int entry_cmp; int index; } ;
typedef TYPE_1__ read_tree_data ;
struct TYPE_19__ {scalar_t__ attr; int filename; } ;
typedef TYPE_2__ git_tree_entry ;
struct TYPE_20__ {scalar_t__ mode; scalar_t__ flags_extended; int id; } ;
typedef TYPE_3__ git_index_entry ;
struct TYPE_21__ {int size; int ptr; } ;
typedef TYPE_4__ git_buf ;


 TYPE_4__ GIT_BUF_INIT ;
 int INDEX_OWNER (int ) ;
 int git_buf_dispose (TYPE_4__*) ;
 scalar_t__ git_buf_joinpath (TYPE_4__*,char const*,int ) ;
 int git_oid_cpy (int *,int ) ;
 scalar_t__ git_oid_equal (int *,int *) ;
 scalar_t__ git_tree_entry__is_tree (TYPE_2__ const*) ;
 int git_tree_entry_id (TYPE_2__ const*) ;
 TYPE_3__* git_vector_get (int *,size_t) ;
 scalar_t__ git_vector_insert (int ,TYPE_3__*) ;
 int index_entry_adjust_namemask (TYPE_3__*,int ) ;
 int index_entry_cpy (TYPE_3__*,TYPE_3__*) ;
 scalar_t__ index_entry_create (TYPE_3__**,int ,int ,int *,int) ;
 int index_entry_free (TYPE_3__*) ;
 int index_find_in_entries (size_t*,int *,int ,int ,int ,int ) ;

__attribute__((used)) static int read_tree_cb(
 const char *root, const git_tree_entry *tentry, void *payload)
{
 read_tree_data *data = payload;
 git_index_entry *entry = ((void*)0), *old_entry;
 git_buf path = GIT_BUF_INIT;
 size_t pos;

 if (git_tree_entry__is_tree(tentry))
  return 0;

 if (git_buf_joinpath(&path, root, tentry->filename) < 0)
  return -1;

 if (index_entry_create(&entry, INDEX_OWNER(data->index), path.ptr, ((void*)0), 0) < 0)
  return -1;

 entry->mode = tentry->attr;
 git_oid_cpy(&entry->id, git_tree_entry_id(tentry));


 if (data->old_entries != ((void*)0) &&
  !index_find_in_entries(
   &pos, data->old_entries, data->entry_cmp, path.ptr, 0, 0) &&
  (old_entry = git_vector_get(data->old_entries, pos)) != ((void*)0) &&
  entry->mode == old_entry->mode &&
  git_oid_equal(&entry->id, &old_entry->id))
 {
  index_entry_cpy(entry, old_entry);
  entry->flags_extended = 0;
 }

 index_entry_adjust_namemask(entry, path.size);
 git_buf_dispose(&path);

 if (git_vector_insert(data->new_entries, entry) < 0) {
  index_entry_free(entry);
  return -1;
 }

 return 0;
}

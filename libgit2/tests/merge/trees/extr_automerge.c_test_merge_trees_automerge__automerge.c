
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct merge_reuc_entry {int dummy; } ;
struct merge_index_entry {int member_0; char* member_1; int member_2; char* member_3; } ;
typedef int git_object ;
typedef int git_merge_options ;
struct TYPE_3__ {scalar_t__ file_size; int id; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;
typedef int git_blob ;


 struct merge_index_entry ADDED_IN_MASTER_INDEX_ENTRY ;
 struct merge_index_entry AUTOMERGEABLE_INDEX_ENTRY ;
 int AUTOMERGEABLE_MERGED_FILE ;
 struct merge_reuc_entry AUTOMERGEABLE_REUC_ENTRY ;
 struct merge_index_entry CHANGED_IN_BRANCH_INDEX_ENTRY ;
 struct merge_index_entry CHANGED_IN_MASTER_INDEX_ENTRY ;
 int GIT_MERGE_OPTIONS_INIT ;
 int GIT_OBJECT_BLOB ;
 struct merge_reuc_entry REMOVED_IN_BRANCH_REUC_ENTRY ;
 struct merge_reuc_entry REMOVED_IN_MASTER_REUC_ENTRY ;
 int THEIRS_AUTOMERGE_BRANCH ;
 struct merge_index_entry UNCHANGED_INDEX_ENTRY ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_blob_free (int *) ;
 int git_blob_rawcontent (int *) ;
 int git_index_free (int *) ;
 TYPE_1__* git_index_get_bypath (int *,char*,int ) ;
 int git_object_lookup (int **,int ,int *,int ) ;
 scalar_t__ memcmp (int ,int ,size_t) ;
 int merge_test_index (int *,struct merge_index_entry*,int) ;
 int merge_test_reuc (int *,struct merge_reuc_entry*,int) ;
 int merge_trees_from_branches (int **,int ,char*,int ,int *) ;
 int repo ;
 scalar_t__ strlen (int ) ;

void test_merge_trees_automerge__automerge(void)
{
 git_index *index;
 const git_index_entry *entry;
 git_merge_options opts = GIT_MERGE_OPTIONS_INIT;
 git_blob *blob;

 struct merge_index_entry merge_index_entries[] = {
  ADDED_IN_MASTER_INDEX_ENTRY,
  AUTOMERGEABLE_INDEX_ENTRY,
  CHANGED_IN_BRANCH_INDEX_ENTRY,
  CHANGED_IN_MASTER_INDEX_ENTRY,

  { 0100644, "d427e0b2e138501a3d15cc376077a3631e15bd46", 1, "conflicting.txt" },
  { 0100644, "4e886e602529caa9ab11d71f86634bd1b6e0de10", 2, "conflicting.txt" },
  { 0100644, "2bd0a343aeef7a2cf0d158478966a6e587ff3863", 3, "conflicting.txt" },

  UNCHANGED_INDEX_ENTRY,
 };

 struct merge_reuc_entry merge_reuc_entries[] = {
  AUTOMERGEABLE_REUC_ENTRY,
  REMOVED_IN_BRANCH_REUC_ENTRY,
  REMOVED_IN_MASTER_REUC_ENTRY
 };

 cl_git_pass(merge_trees_from_branches(&index, repo, "master", THEIRS_AUTOMERGE_BRANCH, &opts));

 cl_assert(merge_test_index(index, merge_index_entries, 8));
 cl_assert(merge_test_reuc(index, merge_reuc_entries, 3));

 cl_assert((entry = git_index_get_bypath(index, "automergeable.txt", 0)) != ((void*)0));
 cl_assert(entry->file_size == strlen(AUTOMERGEABLE_MERGED_FILE));

 cl_git_pass(git_object_lookup((git_object **)&blob, repo, &entry->id, GIT_OBJECT_BLOB));
 cl_assert(memcmp(git_blob_rawcontent(blob), AUTOMERGEABLE_MERGED_FILE, (size_t)entry->file_size) == 0);

 git_index_free(index);
 git_blob_free(blob);
}

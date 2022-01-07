
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct merge_reuc_entry {int dummy; } ;
struct merge_index_entry {int member_0; char* member_1; char* member_3; int member_2; } ;
struct TYPE_4__ {int file_favor; } ;
typedef TYPE_1__ git_merge_options ;
typedef int git_index ;


 struct merge_index_entry ADDED_IN_MASTER_INDEX_ENTRY ;
 struct merge_index_entry AUTOMERGEABLE_INDEX_ENTRY ;
 struct merge_reuc_entry AUTOMERGEABLE_REUC_ENTRY ;
 struct merge_index_entry CHANGED_IN_BRANCH_INDEX_ENTRY ;
 struct merge_index_entry CHANGED_IN_MASTER_INDEX_ENTRY ;
 struct merge_reuc_entry CONFLICTING_REUC_ENTRY ;
 int GIT_MERGE_FILE_FAVOR_THEIRS ;
 TYPE_1__ GIT_MERGE_OPTIONS_INIT ;
 struct merge_reuc_entry REMOVED_IN_BRANCH_REUC_ENTRY ;
 struct merge_reuc_entry REMOVED_IN_MASTER_REUC_ENTRY ;
 int THEIRS_AUTOMERGE_BRANCH ;
 struct merge_index_entry UNCHANGED_INDEX_ENTRY ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int git_index_free (int *) ;
 int merge_test_index (int *,struct merge_index_entry*,int) ;
 int merge_test_reuc (int *,struct merge_reuc_entry*,int) ;
 int merge_trees_from_branches (int **,int ,char*,int ,TYPE_1__*) ;
 int repo ;

void test_merge_trees_automerge__favor_theirs(void)
{
 git_index *index;
 git_merge_options opts = GIT_MERGE_OPTIONS_INIT;

 struct merge_index_entry merge_index_entries[] = {
  ADDED_IN_MASTER_INDEX_ENTRY,
  AUTOMERGEABLE_INDEX_ENTRY,
  CHANGED_IN_BRANCH_INDEX_ENTRY,
  CHANGED_IN_MASTER_INDEX_ENTRY,
  { 0100644, "2bd0a343aeef7a2cf0d158478966a6e587ff3863", 0, "conflicting.txt" },
  UNCHANGED_INDEX_ENTRY,
 };

 struct merge_reuc_entry merge_reuc_entries[] = {
  AUTOMERGEABLE_REUC_ENTRY,
  CONFLICTING_REUC_ENTRY,
  REMOVED_IN_BRANCH_REUC_ENTRY,
  REMOVED_IN_MASTER_REUC_ENTRY,
 };

 opts.file_favor = GIT_MERGE_FILE_FAVOR_THEIRS;

 cl_git_pass(merge_trees_from_branches(&index, repo, "master", THEIRS_AUTOMERGE_BRANCH, &opts));

 cl_assert(merge_test_index(index, merge_index_entries, 6));
 cl_assert(merge_test_reuc(index, merge_reuc_entries, 4));

 git_index_free(index);
}

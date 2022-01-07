
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct merge_diff_similarity {scalar_t__ similarity; } ;
struct TYPE_9__ {scalar_t__ rename_threshold; } ;
typedef TYPE_2__ git_merge_options ;
struct TYPE_8__ {TYPE_4__** contents; } ;
struct TYPE_10__ {TYPE_1__ conflicts; } ;
typedef TYPE_3__ git_merge_diff_list ;
struct TYPE_11__ {scalar_t__ type; int our_entry; int their_entry; } ;
typedef TYPE_4__ git_merge_diff ;


 scalar_t__ GIT_MERGE_DIFF_BOTH_RENAMED ;
 void* GIT_MERGE_DIFF_BOTH_RENAMED_1_TO_2 ;
 void* GIT_MERGE_DIFF_BOTH_RENAMED_2_TO_1 ;
 scalar_t__ GIT_MERGE_DIFF_MODIFIED_DELETED ;
 void* GIT_MERGE_DIFF_RENAMED_ADDED ;
 void* GIT_MERGE_DIFF_RENAMED_DELETED ;
 void* GIT_MERGE_DIFF_RENAMED_MODIFIED ;
 scalar_t__ GIT_MERGE_INDEX_ENTRY_EXISTS (int ) ;

__attribute__((used)) static void merge_diff_mark_rename_conflict(
 git_merge_diff_list *diff_list,
 struct merge_diff_similarity *similarity_ours,
 bool ours_renamed,
 size_t ours_source_idx,
 struct merge_diff_similarity *similarity_theirs,
 bool theirs_renamed,
 size_t theirs_source_idx,
 git_merge_diff *target,
 const git_merge_options *opts)
{
 git_merge_diff *ours_source = ((void*)0), *theirs_source = ((void*)0);

 if (ours_renamed)
  ours_source = diff_list->conflicts.contents[ours_source_idx];

 if (theirs_renamed)
  theirs_source = diff_list->conflicts.contents[theirs_source_idx];


 if (ours_renamed && theirs_renamed) {

  if (ours_source_idx == theirs_source_idx)
   ours_source->type = GIT_MERGE_DIFF_BOTH_RENAMED;
  else {
   ours_source->type = GIT_MERGE_DIFF_BOTH_RENAMED_2_TO_1;
   theirs_source->type = GIT_MERGE_DIFF_BOTH_RENAMED_2_TO_1;
  }
 } else if (ours_renamed) {

  if (similarity_theirs[ours_source_idx].similarity >= opts->rename_threshold)
   ours_source->type = GIT_MERGE_DIFF_BOTH_RENAMED_1_TO_2;

  else if (GIT_MERGE_INDEX_ENTRY_EXISTS(target->their_entry)) {
   ours_source->type = GIT_MERGE_DIFF_RENAMED_ADDED;
   target->type = GIT_MERGE_DIFF_RENAMED_ADDED;
  }

  else if (!GIT_MERGE_INDEX_ENTRY_EXISTS(ours_source->their_entry))
   ours_source->type = GIT_MERGE_DIFF_RENAMED_DELETED;

  else if (ours_source->type == GIT_MERGE_DIFF_MODIFIED_DELETED)
   ours_source->type = GIT_MERGE_DIFF_RENAMED_MODIFIED;
 } else if (theirs_renamed) {

  if (similarity_ours[theirs_source_idx].similarity >= opts->rename_threshold)
   theirs_source->type = GIT_MERGE_DIFF_BOTH_RENAMED_1_TO_2;

  else if (GIT_MERGE_INDEX_ENTRY_EXISTS(target->our_entry)) {
   theirs_source->type = GIT_MERGE_DIFF_RENAMED_ADDED;
   target->type = GIT_MERGE_DIFF_RENAMED_ADDED;
  }

  else if (!GIT_MERGE_INDEX_ENTRY_EXISTS(theirs_source->our_entry))
   theirs_source->type = GIT_MERGE_DIFF_RENAMED_DELETED;

  else if (theirs_source->type == GIT_MERGE_DIFF_MODIFIED_DELETED)
   theirs_source->type = GIT_MERGE_DIFF_RENAMED_MODIFIED;
 }
}

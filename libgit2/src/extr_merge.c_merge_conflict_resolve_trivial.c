
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int staged; } ;
typedef TYPE_1__ git_merge_diff_list ;
struct TYPE_6__ {scalar_t__ type; scalar_t__ our_status; scalar_t__ their_status; int const their_entry; int const our_entry; } ;
typedef TYPE_2__ git_merge_diff ;
typedef int const git_index_entry ;


 scalar_t__ GIT_DELTA_RENAMED ;
 scalar_t__ GIT_DELTA_UNMODIFIED ;
 scalar_t__ GIT_MERGE_DIFF_DIRECTORY_FILE ;
 scalar_t__ GIT_MERGE_DIFF_RENAMED_ADDED ;
 scalar_t__ GIT_MERGE_INDEX_ENTRY_EXISTS (int const) ;
 int assert (int ) ;
 int git_vector_insert (int *,void*) ;
 scalar_t__ index_entry_cmp (int const*,int const*) ;

__attribute__((used)) static int merge_conflict_resolve_trivial(
 int *resolved,
 git_merge_diff_list *diff_list,
 const git_merge_diff *conflict)
{
 int ours_empty, theirs_empty;
 int ours_changed, theirs_changed, ours_theirs_differ;
 git_index_entry const *result = ((void*)0);
 int error = 0;

 assert(resolved && diff_list && conflict);

 *resolved = 0;

 if (conflict->type == GIT_MERGE_DIFF_DIRECTORY_FILE ||
  conflict->type == GIT_MERGE_DIFF_RENAMED_ADDED)
  return 0;

 if (conflict->our_status == GIT_DELTA_RENAMED ||
  conflict->their_status == GIT_DELTA_RENAMED)
  return 0;

 ours_empty = !GIT_MERGE_INDEX_ENTRY_EXISTS(conflict->our_entry);
 theirs_empty = !GIT_MERGE_INDEX_ENTRY_EXISTS(conflict->their_entry);

 ours_changed = (conflict->our_status != GIT_DELTA_UNMODIFIED);
 theirs_changed = (conflict->their_status != GIT_DELTA_UNMODIFIED);
 ours_theirs_differ = ours_changed && theirs_changed &&
  index_entry_cmp(&conflict->our_entry, &conflict->their_entry);
 if (ours_changed && !ours_empty && !ours_theirs_differ)
  result = &conflict->our_entry;

 else if (ours_changed && ours_empty && theirs_empty)
  *resolved = 0;

 else if (ours_empty && !theirs_changed)
  *resolved = 0;

 else if (!ours_changed && theirs_empty)
  *resolved = 0;

 else if (ours_changed && !theirs_changed)
  result = &conflict->our_entry;

 else if (!ours_changed && theirs_changed)
  result = &conflict->their_entry;
 else
  *resolved = 0;

 if (result != ((void*)0) &&
  GIT_MERGE_INDEX_ENTRY_EXISTS(*result) &&
  (error = git_vector_insert(&diff_list->staged, (void *)result)) >= 0)
  *resolved = 1;



 return error;
}
